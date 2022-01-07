
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct fjes_hw {int * base; } ;


 size_t readl (int *) ;

u32 fjes_hw_rd32(struct fjes_hw *hw, u32 reg)
{
 u8 *base = hw->base;
 u32 value = 0;

 value = readl(&base[reg]);

 return value;
}
