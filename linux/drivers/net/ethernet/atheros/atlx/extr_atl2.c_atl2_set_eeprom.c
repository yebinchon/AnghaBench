
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


 int EFAULT ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int atl2_read_eeprom (struct atl2_hw*,int,int *) ;
 int atl2_write_eeprom (struct atl2_hw*,int,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl2_set_eeprom(struct net_device *netdev,
 struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 struct atl2_hw *hw = &adapter->hw;
 u32 *eeprom_buff;
 u32 *ptr;
 int max_len, first_dword, last_dword, ret_val = 0;
 int i;

 if (eeprom->len == 0)
  return -EOPNOTSUPP;

 if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
  return -EFAULT;

 max_len = 512;

 first_dword = eeprom->offset >> 2;
 last_dword = (eeprom->offset + eeprom->len - 1) >> 2;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = eeprom_buff;

 if (eeprom->offset & 3) {


  if (!atl2_read_eeprom(hw, first_dword*4, &(eeprom_buff[0]))) {
   ret_val = -EIO;
   goto out;
  }
  ptr++;
 }
 if (((eeprom->offset + eeprom->len) & 3)) {




  if (!atl2_read_eeprom(hw, last_dword * 4,
     &(eeprom_buff[last_dword - first_dword]))) {
   ret_val = -EIO;
   goto out;
  }
 }


 memcpy(ptr, bytes, eeprom->len);

 for (i = 0; i < last_dword - first_dword + 1; i++) {
  if (!atl2_write_eeprom(hw, ((first_dword+i)*4), eeprom_buff[i])) {
   ret_val = -EIO;
   goto out;
  }
 }
 out:
 kfree(eeprom_buff);
 return ret_val;
}
