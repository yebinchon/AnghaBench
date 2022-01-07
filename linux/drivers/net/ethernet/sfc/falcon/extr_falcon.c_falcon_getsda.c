
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int EF4_OWORD_FIELD (int ,int ) ;
 int FRF_AB_GPIO3_IN ;
 int FR_AB_GPIO_CTL ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static int falcon_getsda(void *data)
{
 struct ef4_nic *efx = (struct ef4_nic *)data;
 ef4_oword_t reg;

 ef4_reado(efx, &reg, FR_AB_GPIO_CTL);
 return EF4_OWORD_FIELD(reg, FRF_AB_GPIO3_IN);
}
