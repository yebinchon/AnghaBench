
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {int vendor_id; int device_id; TYPE_1__ eeprom; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ e1000_eeprom_spi ;
 int e1000_read_eeprom (struct e1000_hw*,int,int,int*) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;
 int le16_to_cpus (int*) ;
 int memcpy (int *,int *,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_get_eeprom(struct net_device *netdev,
       struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 int first_word, last_word;
 int ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EINVAL;

 eeprom->magic = hw->vendor_id | (hw->device_id << 16);

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;

 eeprom_buff = kmalloc_array(last_word - first_word + 1, sizeof(u16),
        GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 if (hw->eeprom.type == e1000_eeprom_spi)
  ret_val = e1000_read_eeprom(hw, first_word,
         last_word - first_word + 1,
         eeprom_buff);
 else {
  for (i = 0; i < last_word - first_word + 1; i++) {
   ret_val = e1000_read_eeprom(hw, first_word + i, 1,
          &eeprom_buff[i]);
   if (ret_val)
    break;
  }
 }


 for (i = 0; i < last_word - first_word + 1; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1),
        eeprom->len);
 kfree(eeprom_buff);

 return ret_val;
}
