
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct ath5k_ini_mode {scalar_t__ mode_register; int * mode_value; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_REG_WAIT (unsigned int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

__attribute__((used)) static void
ath5k_hw_ini_mode_registers(struct ath5k_hw *ah,
  unsigned int size, const struct ath5k_ini_mode *ini_mode,
  u8 mode)
{
 unsigned int i;

 for (i = 0; i < size; i++) {
  AR5K_REG_WAIT(i);
  ath5k_hw_reg_write(ah, ini_mode[i].mode_value[mode],
   (u32)ini_mode[i].mode_register);
 }

}
