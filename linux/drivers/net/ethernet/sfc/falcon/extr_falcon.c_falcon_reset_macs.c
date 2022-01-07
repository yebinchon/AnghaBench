
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {scalar_t__ stats_disable_count; } ;
struct ef4_nic {int net_dev; struct falcon_nic_data* nic_data; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 int EF4_POPULATE_OWORD_1 (int ,int ,int) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AB_RST_EM ;
 int FRF_AB_RST_XGRX ;
 int FRF_AB_RST_XGTX ;
 int FRF_AB_XM_CORE_RST ;
 int FRF_BB_TXFIFO_DRAIN_EN ;
 int FR_AB_GLB_CTL ;
 int FR_AB_MAC_CTRL ;
 int FR_AB_XM_GLB_CFG ;
 int WARN_ON (int) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_setup_xaui (struct ef4_nic*) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void falcon_reset_macs(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 ef4_oword_t reg, mac_ctrl;
 int count;

 if (ef4_nic_rev(efx) < EF4_REV_FALCON_B0) {



  EF4_POPULATE_OWORD_1(reg, FRF_AB_XM_CORE_RST, 1);
  ef4_writeo(efx, &reg, FR_AB_XM_GLB_CFG);

  for (count = 0; count < 10000; count++) {
   ef4_reado(efx, &reg, FR_AB_XM_GLB_CFG);
   if (EF4_OWORD_FIELD(reg, FRF_AB_XM_CORE_RST) ==
       0)
    return;
   udelay(10);
  }

  netif_err(efx, hw, efx->net_dev,
     "timed out waiting for XMAC core reset\n");
 }


 WARN_ON(nic_data->stats_disable_count == 0);

 ef4_reado(efx, &mac_ctrl, FR_AB_MAC_CTRL);
 EF4_SET_OWORD_FIELD(mac_ctrl, FRF_BB_TXFIFO_DRAIN_EN, 1);
 ef4_writeo(efx, &mac_ctrl, FR_AB_MAC_CTRL);

 ef4_reado(efx, &reg, FR_AB_GLB_CTL);
 EF4_SET_OWORD_FIELD(reg, FRF_AB_RST_XGTX, 1);
 EF4_SET_OWORD_FIELD(reg, FRF_AB_RST_XGRX, 1);
 EF4_SET_OWORD_FIELD(reg, FRF_AB_RST_EM, 1);
 ef4_writeo(efx, &reg, FR_AB_GLB_CTL);

 count = 0;
 while (1) {
  ef4_reado(efx, &reg, FR_AB_GLB_CTL);
  if (!EF4_OWORD_FIELD(reg, FRF_AB_RST_XGTX) &&
      !EF4_OWORD_FIELD(reg, FRF_AB_RST_XGRX) &&
      !EF4_OWORD_FIELD(reg, FRF_AB_RST_EM)) {
   netif_dbg(efx, hw, efx->net_dev,
      "Completed MAC reset after %d loops\n",
      count);
   break;
  }
  if (count > 20) {
   netif_err(efx, hw, efx->net_dev, "MAC reset failed\n");
   break;
  }
  count++;
  udelay(10);
 }



 ef4_writeo(efx, &mac_ctrl, FR_AB_MAC_CTRL);

 falcon_setup_xaui(efx);
}
