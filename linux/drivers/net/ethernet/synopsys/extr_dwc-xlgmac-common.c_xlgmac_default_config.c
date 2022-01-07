
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int tx_pause; int rx_pause; int drv_ver; int drv_name; int sysclk_rate; int phy_speed; int rx_threshold; int tx_threshold; void* rx_pbl; void* tx_pbl; int pblx8; int rx_sf_mode; int tx_sf_mode; int tx_osp_mode; } ;


 int DMA_OSP_ENABLE ;
 void* DMA_PBL_32 ;
 int DMA_PBL_X8_ENABLE ;
 int MTL_RSF_DISABLE ;
 int MTL_RX_THRESHOLD_128 ;
 int MTL_TSF_ENABLE ;
 int MTL_TX_THRESHOLD_128 ;
 int SPEED_25000 ;
 int XLGMAC_DRV_NAME ;
 int XLGMAC_DRV_VERSION ;
 int XLGMAC_SYSCLOCK ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void xlgmac_default_config(struct xlgmac_pdata *pdata)
{
 pdata->tx_osp_mode = DMA_OSP_ENABLE;
 pdata->tx_sf_mode = MTL_TSF_ENABLE;
 pdata->rx_sf_mode = MTL_RSF_DISABLE;
 pdata->pblx8 = DMA_PBL_X8_ENABLE;
 pdata->tx_pbl = DMA_PBL_32;
 pdata->rx_pbl = DMA_PBL_32;
 pdata->tx_threshold = MTL_TX_THRESHOLD_128;
 pdata->rx_threshold = MTL_RX_THRESHOLD_128;
 pdata->tx_pause = 1;
 pdata->rx_pause = 1;
 pdata->phy_speed = SPEED_25000;
 pdata->sysclk_rate = XLGMAC_SYSCLOCK;

 strlcpy(pdata->drv_name, XLGMAC_DRV_NAME, sizeof(pdata->drv_name));
 strlcpy(pdata->drv_ver, XLGMAC_DRV_VERSION, sizeof(pdata->drv_ver));
}
