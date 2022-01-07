
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; scalar_t__ magic; int len; } ;


 int AX_CMD_READ_EEPROM ;
 int AX_CMD_WRITE_DISABLE ;
 int AX_CMD_WRITE_EEPROM ;
 int AX_CMD_WRITE_ENABLE ;
 scalar_t__ AX_EEPROM_MAGIC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int asix_read_cmd (struct usbnet*,int ,int,int ,int,int *,int ) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int ) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int memcpy (int *,int *,int ) ;
 int msleep (int) ;
 int netdev_dbg (struct net_device*,char*,int,int,...) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int asix_set_eeprom(struct net_device *net, struct ethtool_eeprom *eeprom,
      u8 *data)
{
 struct usbnet *dev = netdev_priv(net);
 u16 *eeprom_buff;
 int first_word, last_word;
 int i;
 int ret;

 netdev_dbg(net, "write EEPROM len %d, offset %d, magic 0x%x\n",
     eeprom->len, eeprom->offset, eeprom->magic);

 if (eeprom->len == 0)
  return -EINVAL;

 if (eeprom->magic != AX_EEPROM_MAGIC)
  return -EINVAL;

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;

 eeprom_buff = kmalloc_array(last_word - first_word + 1, sizeof(u16),
        GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;



 if (eeprom->offset & 1) {
  ret = asix_read_cmd(dev, AX_CMD_READ_EEPROM, first_word, 0, 2,
        &eeprom_buff[0], 0);
  if (ret < 0) {
   netdev_err(net, "Failed to read EEPROM at offset 0x%02x.\n", first_word);
   goto free;
  }
 }

 if ((eeprom->offset + eeprom->len) & 1) {
  ret = asix_read_cmd(dev, AX_CMD_READ_EEPROM, last_word, 0, 2,
        &eeprom_buff[last_word - first_word], 0);
  if (ret < 0) {
   netdev_err(net, "Failed to read EEPROM at offset 0x%02x.\n", last_word);
   goto free;
  }
 }

 memcpy((u8 *)eeprom_buff + (eeprom->offset & 1), data, eeprom->len);


 ret = asix_write_cmd(dev, AX_CMD_WRITE_ENABLE, 0x0000, 0, 0, ((void*)0), 0);
 if (ret < 0) {
  netdev_err(net, "Failed to enable EEPROM write\n");
  goto free;
 }
 msleep(20);

 for (i = first_word; i <= last_word; i++) {
  netdev_dbg(net, "write to EEPROM at offset 0x%02x, data 0x%04x\n",
      i, eeprom_buff[i - first_word]);
  ret = asix_write_cmd(dev, AX_CMD_WRITE_EEPROM, i,
         eeprom_buff[i - first_word], 0, ((void*)0), 0);
  if (ret < 0) {
   netdev_err(net, "Failed to write EEPROM at offset 0x%02x.\n",
       i);
   goto free;
  }
  msleep(20);
 }

 ret = asix_write_cmd(dev, AX_CMD_WRITE_DISABLE, 0x0000, 0, 0, ((void*)0), 0);
 if (ret < 0) {
  netdev_err(net, "Failed to disable EEPROM write\n");
  goto free;
 }

 ret = 0;
free:
 kfree(eeprom_buff);
 return ret;
}
