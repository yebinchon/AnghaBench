
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef int u16 ;
struct TYPE_2__ {int length; } ;
struct wil_tx_enhanced_desc {TYPE_1__ dma; } ;
struct wil_ctx {int mapped_as; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;


 int wil_tx_desc_get_addr_edma (TYPE_1__*) ;

__attribute__((used)) static void wil_tx_desc_unmap_edma(struct device *dev,
       union wil_tx_desc *desc,
       struct wil_ctx *ctx)
{
 struct wil_tx_enhanced_desc *d = (struct wil_tx_enhanced_desc *)desc;
 dma_addr_t pa = wil_tx_desc_get_addr_edma(&d->dma);
 u16 dmalen = le16_to_cpu(d->dma.length);

 switch (ctx->mapped_as) {
 case 128:
  dma_unmap_single(dev, pa, dmalen, DMA_TO_DEVICE);
  break;
 case 129:
  dma_unmap_page(dev, pa, dmalen, DMA_TO_DEVICE);
  break;
 default:
  break;
 }
}
