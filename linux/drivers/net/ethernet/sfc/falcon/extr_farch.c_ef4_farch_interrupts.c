
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int irq_level; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_3 (int ,int ,int ,int ,int,int ,int) ;
 int FRF_AZ_DRV_INT_EN_KER ;
 int FRF_AZ_KER_INT_KER ;
 int FRF_AZ_KER_INT_LEVE_SEL ;
 int FR_AZ_INT_EN_KER ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static inline void ef4_farch_interrupts(struct ef4_nic *efx,
          bool enabled, bool force)
{
 ef4_oword_t int_en_reg_ker;

 EF4_POPULATE_OWORD_3(int_en_reg_ker,
        FRF_AZ_KER_INT_LEVE_SEL, efx->irq_level,
        FRF_AZ_KER_INT_KER, force,
        FRF_AZ_DRV_INT_EN_KER, enabled);
 ef4_writeo(efx, &int_en_reg_ker, FR_AZ_INT_EN_KER);
}
