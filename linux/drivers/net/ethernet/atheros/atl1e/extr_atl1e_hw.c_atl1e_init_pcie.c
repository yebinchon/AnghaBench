
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1e_hw {int dummy; } ;


 int AT_READ_REG (struct atl1e_hw*,int) ;
 int AT_WRITE_REG (struct atl1e_hw*,int,int) ;

__attribute__((used)) static void atl1e_init_pcie(struct atl1e_hw *hw)
{
 u32 value;






 value = AT_READ_REG(hw, 0x1008);
 value |= 0x8000;
 AT_WRITE_REG(hw, 0x1008, value);
}
