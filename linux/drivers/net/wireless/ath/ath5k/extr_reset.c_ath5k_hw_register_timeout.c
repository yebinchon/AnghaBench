
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_TUNE_REGISTER_TIMEOUT ;
 int EAGAIN ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int) ;
 int udelay (int) ;

int
ath5k_hw_register_timeout(struct ath5k_hw *ah, u32 reg, u32 flag, u32 val,
         bool is_set)
{
 int i;
 u32 data;

 for (i = AR5K_TUNE_REGISTER_TIMEOUT; i > 0; i--) {
  data = ath5k_hw_reg_read(ah, reg);
  if (is_set && (data & flag))
   break;
  else if ((data & flag) == val)
   break;
  udelay(15);
 }

 return (i <= 0) ? -EAGAIN : 0;
}
