
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_dxe_desc {int dummy; } ;
struct wcn36xx_dxe_ch {int desc_num; int dma_addr; int cpu_addr; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,size_t,int ,int ) ;

__attribute__((used)) static void wcn36xx_dxe_deinit_descs(struct device *dev, struct wcn36xx_dxe_ch *wcn_ch)
{
 size_t size;

 size = wcn_ch->desc_num * sizeof(struct wcn36xx_dxe_desc);
 dma_free_coherent(dev, size,wcn_ch->cpu_addr, wcn_ch->dma_addr);
}
