
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ e1000_pch_spt ;
 scalar_t__ e1000_read_flash_data_ich8lan (struct e1000_hw*,int ,int,scalar_t__*) ;

__attribute__((used)) static s32 e1000_read_flash_byte_ich8lan(struct e1000_hw *hw, u32 offset,
      u8 *data)
{
 s32 ret_val;
 u16 word = 0;




 if (hw->mac.type >= e1000_pch_spt)
  return -E1000_ERR_NVM;
 else
  ret_val = e1000_read_flash_data_ich8lan(hw, offset, 1, &word);

 if (ret_val)
  return ret_val;

 *data = (u8)word;

 return 0;
}
