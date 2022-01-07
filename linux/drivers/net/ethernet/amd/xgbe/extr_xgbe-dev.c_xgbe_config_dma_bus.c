
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {int blen; int aal; int rd_osr_limit; int wr_osr_limit; TYPE_1__* vdata; } ;
struct TYPE_2__ {scalar_t__ rx_desc_prefetch; scalar_t__ tx_desc_prefetch; } ;


 int AAL ;
 int BLEN ;
 int DMA_RXEDMACR ;
 int DMA_SBMR ;
 int DMA_TXEDMACR ;
 int EAME ;
 int RDPS ;
 int RD_OSR_LMT ;
 int TDPS ;
 int UNDEF ;
 int WR_OSR_LMT ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,scalar_t__) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_dma_bus(struct xgbe_prv_data *pdata)
{
 unsigned int sbmr;

 sbmr = XGMAC_IOREAD(pdata, DMA_SBMR);


 XGMAC_SET_BITS(sbmr, DMA_SBMR, EAME, 1);


 XGMAC_SET_BITS(sbmr, DMA_SBMR, UNDEF, 1);
 XGMAC_SET_BITS(sbmr, DMA_SBMR, BLEN, pdata->blen >> 2);
 XGMAC_SET_BITS(sbmr, DMA_SBMR, AAL, pdata->aal);
 XGMAC_SET_BITS(sbmr, DMA_SBMR, RD_OSR_LMT, pdata->rd_osr_limit - 1);
 XGMAC_SET_BITS(sbmr, DMA_SBMR, WR_OSR_LMT, pdata->wr_osr_limit - 1);

 XGMAC_IOWRITE(pdata, DMA_SBMR, sbmr);


 if (pdata->vdata->tx_desc_prefetch)
  XGMAC_IOWRITE_BITS(pdata, DMA_TXEDMACR, TDPS,
       pdata->vdata->tx_desc_prefetch);

 if (pdata->vdata->rx_desc_prefetch)
  XGMAC_IOWRITE_BITS(pdata, DMA_RXEDMACR, RDPS,
       pdata->vdata->rx_desc_prefetch);
}
