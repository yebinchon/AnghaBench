
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int abx500_get_register_interruptible (int *,int,int,int*) ;
 int * sysctrl_dev ;
 int valid_bank (int) ;

int ab8500_sysctrl_read(u16 reg, u8 *value)
{
 u8 bank;

 if (sysctrl_dev == ((void*)0))
  return -EPROBE_DEFER;

 bank = (reg >> 8);
 if (!valid_bank(bank))
  return -EINVAL;

 return abx500_get_register_interruptible(sysctrl_dev, bank,
  (u8)(reg & 0xFF), value);
}
