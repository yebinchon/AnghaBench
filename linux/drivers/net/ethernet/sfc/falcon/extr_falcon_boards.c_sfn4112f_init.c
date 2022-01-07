
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int ef4_init_lm87 (struct ef4_nic*,int *,int ) ;
 int sfn4112f_hwmon_info ;
 int sfn4112f_lm87_regs ;

__attribute__((used)) static int sfn4112f_init(struct ef4_nic *efx)
{
 return ef4_init_lm87(efx, &sfn4112f_hwmon_info, sfn4112f_lm87_regs);
}
