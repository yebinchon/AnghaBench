
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int * chan_fifo0_tx; int * chan_fifo0_rx; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void flctl_release_dma(struct sh_flctl *flctl)
{
 if (flctl->chan_fifo0_rx) {
  dma_release_channel(flctl->chan_fifo0_rx);
  flctl->chan_fifo0_rx = ((void*)0);
 }
 if (flctl->chan_fifo0_tx) {
  dma_release_channel(flctl->chan_fifo0_tx);
  flctl->chan_fifo0_tx = ((void*)0);
 }
}
