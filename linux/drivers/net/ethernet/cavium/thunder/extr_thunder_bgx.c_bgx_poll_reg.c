
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct bgx {int dummy; } ;


 int bgx_reg_read (struct bgx*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bgx_poll_reg(struct bgx *bgx, u8 lmac, u64 reg, u64 mask, bool zero)
{
 int timeout = 100;
 u64 reg_val;

 while (timeout) {
  reg_val = bgx_reg_read(bgx, lmac, reg);
  if (zero && !(reg_val & mask))
   return 0;
  if (!zero && (reg_val & mask))
   return 0;
  usleep_range(1000, 2000);
  timeout--;
 }
 return 1;
}
