
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int num_dma_ch; int ** dma_ch; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void mic_free_dma_chans(struct mic_device *mdev)
{
 int i = 0;

 for (i = 0; i < mdev->num_dma_ch; i++) {
  dma_release_channel(mdev->dma_ch[i]);
  mdev->dma_ch[i] = ((void*)0);
 }
 mdev->num_dma_ch = 0;
}
