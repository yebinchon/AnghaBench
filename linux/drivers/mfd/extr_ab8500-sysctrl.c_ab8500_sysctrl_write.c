
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int abx500_mask_and_set_register_interruptible (int *,int,int,int,int) ;
 int pr_err (char*) ;
 int * sysctrl_dev ;
 int valid_bank (int) ;

int ab8500_sysctrl_write(u16 reg, u8 mask, u8 value)
{
 u8 bank;

 if (sysctrl_dev == ((void*)0))
  return -EPROBE_DEFER;

 bank = (reg >> 8);
 if (!valid_bank(bank)) {
  pr_err("invalid bank\n");
  return -EINVAL;
 }

 return abx500_mask_and_set_register_interruptible(sysctrl_dev, bank,
  (u8)(reg & 0xFF), mask, value);
}
