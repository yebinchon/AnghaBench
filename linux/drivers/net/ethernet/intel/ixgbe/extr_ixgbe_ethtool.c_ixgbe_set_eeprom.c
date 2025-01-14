
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int,int*) ;int (* write_buffer ) (struct ixgbe_hw*,int,int,int*) ;int (* update_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {int vendor_id; int device_id; TYPE_2__ eeprom; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le16s (int*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpus (int*) ;
 int memcpy (void*,int *,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int,int*) ;
 int stub2 (struct ixgbe_hw*,int,int*) ;
 int stub3 (struct ixgbe_hw*,int,int,int*) ;
 int stub4 (struct ixgbe_hw*) ;

__attribute__((used)) static int ixgbe_set_eeprom(struct net_device *netdev,
       struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u16 *eeprom_buff;
 void *ptr;
 int max_len, first_word, last_word, ret_val = 0;
 u16 i;

 if (eeprom->len == 0)
  return -EINVAL;

 if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
  return -EINVAL;

 max_len = hw->eeprom.word_size * 2;

 first_word = eeprom->offset >> 1;
 last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 eeprom_buff = kmalloc(max_len, GFP_KERNEL);
 if (!eeprom_buff)
  return -ENOMEM;

 ptr = eeprom_buff;

 if (eeprom->offset & 1) {




  ret_val = hw->eeprom.ops.read(hw, first_word, &eeprom_buff[0]);
  if (ret_val)
   goto err;

  ptr++;
 }
 if ((eeprom->offset + eeprom->len) & 1) {




  ret_val = hw->eeprom.ops.read(hw, last_word,
       &eeprom_buff[last_word - first_word]);
  if (ret_val)
   goto err;
 }


 for (i = 0; i < last_word - first_word + 1; i++)
  le16_to_cpus(&eeprom_buff[i]);

 memcpy(ptr, bytes, eeprom->len);

 for (i = 0; i < last_word - first_word + 1; i++)
  cpu_to_le16s(&eeprom_buff[i]);

 ret_val = hw->eeprom.ops.write_buffer(hw, first_word,
           last_word - first_word + 1,
           eeprom_buff);


 if (ret_val == 0)
  hw->eeprom.ops.update_checksum(hw);

err:
 kfree(eeprom_buff);
 return ret_val;
}
