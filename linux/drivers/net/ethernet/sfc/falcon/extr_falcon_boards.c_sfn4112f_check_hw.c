
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int ef4_check_lm87 (struct ef4_nic*,int) ;

__attribute__((used)) static int sfn4112f_check_hw(struct ef4_nic *efx)
{

 return ef4_check_lm87(efx, ~0x48);
}
