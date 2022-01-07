
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int aal; int rd_osr_limit; int wr_osr_limit; int pause_autoneg; int tx_pause; int rx_pause; scalar_t__ power_down; int phy_speed; int rx_threshold; int rx_sf_mode; int tx_osp_mode; int tx_threshold; int tx_sf_mode; int pbl; int blen; } ;


 int DBGPR (char*) ;
 int DMA_OSP_ENABLE ;
 int DMA_PBL_128 ;
 int DMA_SBMR_BLEN_64 ;
 int MTL_RSF_DISABLE ;
 int MTL_RX_THRESHOLD_64 ;
 int MTL_TSF_ENABLE ;
 int MTL_TX_THRESHOLD_64 ;
 int SPEED_UNKNOWN ;

__attribute__((used)) static void xgbe_default_config(struct xgbe_prv_data *pdata)
{
 DBGPR("-->xgbe_default_config\n");

 pdata->blen = DMA_SBMR_BLEN_64;
 pdata->pbl = DMA_PBL_128;
 pdata->aal = 1;
 pdata->rd_osr_limit = 8;
 pdata->wr_osr_limit = 8;
 pdata->tx_sf_mode = MTL_TSF_ENABLE;
 pdata->tx_threshold = MTL_TX_THRESHOLD_64;
 pdata->tx_osp_mode = DMA_OSP_ENABLE;
 pdata->rx_sf_mode = MTL_RSF_DISABLE;
 pdata->rx_threshold = MTL_RX_THRESHOLD_64;
 pdata->pause_autoneg = 1;
 pdata->tx_pause = 1;
 pdata->rx_pause = 1;
 pdata->phy_speed = SPEED_UNKNOWN;
 pdata->power_down = 0;

 DBGPR("<--xgbe_default_config\n");
}
