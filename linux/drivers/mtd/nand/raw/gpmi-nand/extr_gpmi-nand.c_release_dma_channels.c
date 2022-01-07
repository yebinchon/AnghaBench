
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {int ** dma_chans; } ;


 unsigned int DMA_CHANS ;
 int dma_release_channel (int *) ;

__attribute__((used)) static void release_dma_channels(struct gpmi_nand_data *this)
{
 unsigned int i;
 for (i = 0; i < DMA_CHANS; i++)
  if (this->dma_chans[i]) {
   dma_release_channel(this->dma_chans[i]);
   this->dma_chans[i] = ((void*)0);
  }
}
