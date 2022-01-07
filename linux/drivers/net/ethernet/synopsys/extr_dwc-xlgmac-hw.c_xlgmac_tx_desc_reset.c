
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_dma_desc {scalar_t__ desc3; scalar_t__ desc2; scalar_t__ desc1; scalar_t__ desc0; } ;
struct xlgmac_desc_data {struct xlgmac_dma_desc* dma_desc; } ;


 int dma_wmb () ;

__attribute__((used)) static void xlgmac_tx_desc_reset(struct xlgmac_desc_data *desc_data)
{
 struct xlgmac_dma_desc *dma_desc = desc_data->dma_desc;







 dma_desc->desc0 = 0;
 dma_desc->desc1 = 0;
 dma_desc->desc2 = 0;
 dma_desc->desc3 = 0;


 dma_wmb();
}
