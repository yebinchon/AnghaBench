
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_ini {scalar_t__ ini_register; int ini_mode; int ini_value; } ;
struct ath5k_hw {int dummy; } ;




 scalar_t__ AR5K_PCU_MAX ;
 scalar_t__ AR5K_PCU_MIN ;
 int AR5K_REG_WAIT (unsigned int) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,scalar_t__) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,scalar_t__) ;

__attribute__((used)) static void
ath5k_hw_ini_registers(struct ath5k_hw *ah, unsigned int size,
  const struct ath5k_ini *ini_regs, bool skip_pcu)
{
 unsigned int i;


 for (i = 0; i < size; i++) {


  if (skip_pcu &&
    ini_regs[i].ini_register >= AR5K_PCU_MIN &&
    ini_regs[i].ini_register <= AR5K_PCU_MAX)
   continue;

  switch (ini_regs[i].ini_mode) {
  case 129:

   ath5k_hw_reg_read(ah, ini_regs[i].ini_register);
   break;
  case 128:
  default:
   AR5K_REG_WAIT(i);
   ath5k_hw_reg_write(ah, ini_regs[i].ini_value,
     ini_regs[i].ini_register);
  }
 }
}
