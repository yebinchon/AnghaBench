
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int vendor_id; int device_id; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_eeprom {int len; int magic; int offset; } ;


 int EEPROM_CHECKSUM_REG ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ixgb_get_eeprom_len (struct net_device*) ;
 int ixgb_read_eeprom (struct ixgb_hw*,int) ;
 int ixgb_update_eeprom_checksum (struct ixgb_hw*) ;
 int ixgb_write_eeprom (struct ixgb_hw*,int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (void*,int *,int) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ixgb_set_eeprom(struct net_device *netdev,
    struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 void *ptr;
 int max_len, first_word, last_word;
 u16 i;

 if (eeprom->len == 0)
  return -EINVAL;

 if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
  return -EFAULT;

 max_len = ixgb_get_eeprom_len(netdev);

 if (eeprom->offset > eeprom->offset + eeprom->len)
  return -EINVAL;

 if ((eeprom->offset + eeprom->len) > max_len)
  eeprom->len = (max_len - eeprom->offset);

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = (void *)eeprom_buff;

 if (eeprom->offset & 1) {


  eeprom_buff[0] = ixgb_read_eeprom(hw, first_word);
  ptr++;
 }
 if ((eeprom->offset + eeprom->len) & 1) {


  eeprom_buff[last_word - first_word]
   = ixgb_read_eeprom(hw, last_word);
 }

 memcpy(ptr, bytes, eeprom->len);
 for (i = 0; i <= (last_word - first_word); i++)
  ixgb_write_eeprom(hw, first_word + i, eeprom_buff[i]);


 if (first_word <= EEPROM_CHECKSUM_REG)
  ixgb_update_eeprom_checksum(hw);

 kfree(eeprom_buff);
 return 0;
}
