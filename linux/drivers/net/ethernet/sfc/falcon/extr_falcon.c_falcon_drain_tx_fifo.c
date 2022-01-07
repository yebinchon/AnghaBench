
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ loopback_mode; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int FRF_BB_TXFIFO_DRAIN_EN ;
 int FR_AB_MAC_CTRL ;
 scalar_t__ LOOPBACK_NONE ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int falcon_reset_macs (struct ef4_nic*) ;

__attribute__((used)) static void falcon_drain_tx_fifo(struct ef4_nic *efx)
{
 ef4_oword_t reg;

 if ((ef4_nic_rev(efx) < EF4_REV_FALCON_B0) ||
     (efx->loopback_mode != LOOPBACK_NONE))
  return;

 ef4_reado(efx, &reg, FR_AB_MAC_CTRL);

 if (EF4_OWORD_FIELD(reg, FRF_BB_TXFIFO_DRAIN_EN))
  return;

 falcon_reset_macs(efx);
}
