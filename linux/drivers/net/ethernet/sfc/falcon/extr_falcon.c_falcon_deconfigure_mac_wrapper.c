
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int ) ;
 int FRF_BZ_RX_INGR_EN ;
 int FR_AZ_RX_CFG ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_drain_tx_fifo (struct ef4_nic*) ;

__attribute__((used)) static void falcon_deconfigure_mac_wrapper(struct ef4_nic *efx)
{
 ef4_oword_t reg;

 if (ef4_nic_rev(efx) < EF4_REV_FALCON_B0)
  return;


 ef4_reado(efx, &reg, FR_AZ_RX_CFG);
 EF4_SET_OWORD_FIELD(reg, FRF_BZ_RX_INGR_EN, 0);
 ef4_writeo(efx, &reg, FR_AZ_RX_CFG);


 falcon_drain_tx_fifo(efx);
}
