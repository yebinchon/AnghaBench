
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int paddr; scalar_t__ virt; } ;


 int BDISP_HF_NB ;
 int BDISP_VF_NB ;
 int DMA_ATTR_WRITE_COMBINE ;
 int NB_H_FILTER ;
 int NB_V_FILTER ;
 TYPE_1__* bdisp_h_filter ;
 int dma_free_attrs (struct device*,int,scalar_t__,int ,int ) ;

void bdisp_hw_free_filters(struct device *dev)
{
 int size = (BDISP_HF_NB * NB_H_FILTER) + (BDISP_VF_NB * NB_V_FILTER);

 if (bdisp_h_filter[0].virt)
  dma_free_attrs(dev, size, bdisp_h_filter[0].virt,
          bdisp_h_filter[0].paddr, DMA_ATTR_WRITE_COMBINE);
}
