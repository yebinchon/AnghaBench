
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; scalar_t__ offset; int magic; } ;
typedef int __le16 ;


 int EINVAL ;
 int SR_CMD_READ_EEPROM ;
 int SR_EEPROM_MAGIC ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int sr_read_cmd (struct usbnet*,int ,scalar_t__,int ,int,int *) ;

__attribute__((used)) static int sr_get_eeprom(struct net_device *net,
         struct ethtool_eeprom *eeprom, u8 *data)
{
 struct usbnet *dev = netdev_priv(net);
 __le16 *ebuf = (__le16 *)data;
 int ret;
 int i;




 if (eeprom->len % 2)
  return -EINVAL;

 eeprom->magic = SR_EEPROM_MAGIC;


 for (i = 0; i < eeprom->len / 2; i++) {
  ret = sr_read_cmd(dev, SR_CMD_READ_EEPROM, eeprom->offset + i,
      0, 2, &ebuf[i]);
  if (ret < 0)
   return -EINVAL;
 }
 return 0;
}
