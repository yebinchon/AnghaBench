
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct z8530_channel {int status; int dcdcheck; int* regs; scalar_t__ netdevice; TYPE_1__* dev; scalar_t__ txdma_on; int txdma; scalar_t__ dma_tx; } ;
struct TYPE_2__ {int name; } ;


 int R0 ;
 int R3 ;
 int RES_EXT_INT ;
 int RES_H_IUS ;
 int RxENABLE ;
 int TxEOM ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int netif_carrier_off (scalar_t__) ;
 int netif_carrier_on (scalar_t__) ;
 int pr_info (char*,int ) ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int release_dma_lock (unsigned long) ;
 int write_zsctrl (struct z8530_channel*,int ) ;
 int write_zsreg (struct z8530_channel*,int ,int) ;
 int z8530_flush_fifo (struct z8530_channel*) ;
 int z8530_tx_done (struct z8530_channel*) ;

__attribute__((used)) static void z8530_dma_status(struct z8530_channel *chan)
{
 u8 status, altered;

 status=read_zsreg(chan, R0);
 altered=chan->status^status;

 chan->status=status;


 if(chan->dma_tx)
 {
  if(status&TxEOM)
  {
   unsigned long flags;

   flags=claim_dma_lock();
   disable_dma(chan->txdma);
   clear_dma_ff(chan->txdma);
   chan->txdma_on=0;
   release_dma_lock(flags);
   z8530_tx_done(chan);
  }
 }

 if (altered & chan->dcdcheck)
 {
  if (status & chan->dcdcheck) {
   pr_info("%s: DCD raised\n", chan->dev->name);
   write_zsreg(chan, R3, chan->regs[3] | RxENABLE);
   if (chan->netdevice)
    netif_carrier_on(chan->netdevice);
  } else {
   pr_info("%s: DCD lost\n", chan->dev->name);
   write_zsreg(chan, R3, chan->regs[3] & ~RxENABLE);
   z8530_flush_fifo(chan);
   if (chan->netdevice)
    netif_carrier_off(chan->netdevice);
  }
 }

 write_zsctrl(chan, RES_EXT_INT);
 write_zsctrl(chan, RES_H_IUS);
}
