
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct atl2_hw {int vendor_id; int device_id; } ;
struct atl2_adapter {struct atl2_hw hw; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ atl2_check_eeprom_exist (struct atl2_hw*) ;
 int atl2_read_eeprom (struct atl2_hw*,int,int *) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int memcpy (int *,int *,int ) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl2_get_eeprom(struct net_device *netdev,
 struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 struct atl2_hw *hw = &adapter->hw;
 u32 *eeprom_buff;
 int first_dword, last_dword;
 int ret_val = 0;
 int i;

 if (eeprom->len == 0)
  return -EINVAL;

 if (atl2_check_eeprom_exist(hw))
  return -EINVAL;

 eeprom->magic = hw->vendor_id | (hw->device_id << 16);

 first_dword = eeprom->offset >> 2;
 last_dword = (eeprom->offset + eeprom->len - 1) >> 2;

 eeprom_buff = kmalloc_array(last_dword - first_dword + 1, sizeof(u32),
        GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 for (i = first_dword; i < last_dword; i++) {
  if (!atl2_read_eeprom(hw, i*4, &(eeprom_buff[i-first_dword]))) {
   ret_val = -EIO;
   goto free;
  }
 }

 memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 3),
  eeprom->len);
free:
 kfree(eeprom_buff);

 return ret_val;
}
