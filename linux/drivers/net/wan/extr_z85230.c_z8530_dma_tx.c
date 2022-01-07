
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int dma_tx; } ;


 int pr_err (char*) ;
 int pr_warn (char*) ;
 int z8530_tx (struct z8530_channel*) ;

__attribute__((used)) static void z8530_dma_tx(struct z8530_channel *chan)
{
 if(!chan->dma_tx)
 {
  pr_warn("Hey who turned the DMA off?\n");
  z8530_tx(chan);
  return;
 }

 pr_err("DMA tx - bogus event!\n");
 z8530_tx(chan);
}
