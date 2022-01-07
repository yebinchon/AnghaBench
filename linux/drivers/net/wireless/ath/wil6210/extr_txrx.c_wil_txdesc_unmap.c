
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int addr; } ;
struct vring_tx_desc {TYPE_1__ dma; } ;
union wil_tx_desc {struct vring_tx_desc legacy; } ;
typedef int u16 ;
struct wil_ctx {int mapped_as; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int wil_desc_addr (int *) ;



__attribute__((used)) static void wil_txdesc_unmap(struct device *dev, union wil_tx_desc *desc,
        struct wil_ctx *ctx)
{
 struct vring_tx_desc *d = &desc->legacy;
 dma_addr_t pa = wil_desc_addr(&d->dma.addr);
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
