
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {scalar_t__ chan_fifo0_tx; int * done_buff; } ;


 int DMA_TO_DEVICE ;
 int FLECFIFO (struct sh_flctl*) ;
 unsigned long cpu_to_be32 (unsigned long) ;
 scalar_t__ flctl_dma_fifo0_transfer (struct sh_flctl*,unsigned long*,int,int ) ;
 int wait_wecfifo_ready (struct sh_flctl*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void write_ec_fiforeg(struct sh_flctl *flctl, int rlen,
      unsigned int offset)
{
 int i, len_4align;
 unsigned long *buf = (unsigned long *)&flctl->done_buff[offset];

 len_4align = (rlen + 3) / 4;

 for (i = 0; i < len_4align; i++)
  buf[i] = cpu_to_be32(buf[i]);


 if (flctl->chan_fifo0_tx && rlen >= 32 &&
  flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_TO_DEVICE) > 0)
   return;


 for (i = 0; i < len_4align; i++) {
  wait_wecfifo_ready(flctl);
  writel(buf[i], FLECFIFO(flctl));
 }
}
