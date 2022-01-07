
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ awarcr; scalar_t__ awcr; scalar_t__ arcr; } ;


 int DMA_AXIARCR ;
 int DMA_AXIAWARCR ;
 int DMA_AXIAWCR ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,scalar_t__) ;

__attribute__((used)) static void xgbe_config_dma_cache(struct xgbe_prv_data *pdata)
{
 XGMAC_IOWRITE(pdata, DMA_AXIARCR, pdata->arcr);
 XGMAC_IOWRITE(pdata, DMA_AXIAWCR, pdata->awcr);
 if (pdata->awarcr)
  XGMAC_IOWRITE(pdata, DMA_AXIAWARCR, pdata->awarcr);
}
