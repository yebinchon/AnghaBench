
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_read_flash_data32_ich8lan (struct e1000_hw*,int,int*) ;

__attribute__((used)) static s32 e1000_read_flash_dword_ich8lan(struct e1000_hw *hw, u32 offset,
       u32 *data)
{

 offset <<= 1;
 return e1000_read_flash_data32_ich8lan(hw, offset, data);
}
