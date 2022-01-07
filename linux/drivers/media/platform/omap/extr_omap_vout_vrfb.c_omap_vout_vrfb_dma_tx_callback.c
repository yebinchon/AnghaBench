
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vid_vrfb_dma {int tx_status; int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void omap_vout_vrfb_dma_tx_callback(void *data)
{
 struct vid_vrfb_dma *t = (struct vid_vrfb_dma *) data;

 t->tx_status = 1;
 wake_up_interruptible(&t->wait);
}
