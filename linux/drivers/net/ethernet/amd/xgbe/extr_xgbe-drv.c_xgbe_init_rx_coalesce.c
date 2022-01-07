
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* config_rx_coalesce ) (struct xgbe_prv_data*) ;int (* usec_to_riwt ) (struct xgbe_prv_data*,int ) ;} ;
struct xgbe_prv_data {int rx_frames; int rx_usecs; int rx_riwt; struct xgbe_hw_if hw_if; } ;


 int DBGPR (char*) ;
 int XGMAC_INIT_DMA_RX_FRAMES ;
 int XGMAC_INIT_DMA_RX_USECS ;
 int stub1 (struct xgbe_prv_data*,int ) ;
 int stub2 (struct xgbe_prv_data*) ;

void xgbe_init_rx_coalesce(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;

 DBGPR("-->xgbe_init_rx_coalesce\n");

 pdata->rx_riwt = hw_if->usec_to_riwt(pdata, XGMAC_INIT_DMA_RX_USECS);
 pdata->rx_usecs = XGMAC_INIT_DMA_RX_USECS;
 pdata->rx_frames = XGMAC_INIT_DMA_RX_FRAMES;

 hw_if->config_rx_coalesce(pdata);

 DBGPR("<--xgbe_init_rx_coalesce\n");
}
