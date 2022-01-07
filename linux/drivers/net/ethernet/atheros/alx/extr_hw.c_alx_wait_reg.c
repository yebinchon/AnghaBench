
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int dummy; } ;


 int ALX_SLD_MAX_TO ;
 int alx_read_mem32 (struct alx_hw*,int) ;
 int mdelay (int) ;

__attribute__((used)) static bool alx_wait_reg(struct alx_hw *hw, u32 reg, u32 wait, u32 *val)
{
 u32 read;
 int i;

 for (i = 0; i < ALX_SLD_MAX_TO; i++) {
  read = alx_read_mem32(hw, reg);
  if ((read & wait) == 0) {
   if (val)
    *val = read;
   return 1;
  }
  mdelay(1);
 }

 return 0;
}
