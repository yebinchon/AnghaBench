
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_driver {int num_dma_ch; int ** dma_ch; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void mic_free_dma_chans(struct mic_driver *mdrv)
{
 int i = 0;

 for (i = 0; i < mdrv->num_dma_ch; i++) {
  dma_release_channel(mdrv->dma_ch[i]);
  mdrv->dma_ch[i] = ((void*)0);
 }
 mdrv->num_dma_ch = 0;
}
