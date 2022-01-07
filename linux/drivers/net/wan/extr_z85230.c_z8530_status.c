
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct z8530_channel {int status; int dcdcheck; int* regs; TYPE_3__* netdevice; TYPE_2__* dev; } ;
struct TYPE_5__ {int tx_fifo_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int name; } ;


 int ERR_RES ;
 int R0 ;
 int R3 ;
 int RES_EXT_INT ;
 int RES_H_IUS ;
 int RxENABLE ;
 int TxEOM ;
 int netif_carrier_off (TYPE_3__*) ;
 int netif_carrier_on (TYPE_3__*) ;
 int pr_info (char*,int ) ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int write_zsctrl (struct z8530_channel*,int ) ;
 int write_zsreg (struct z8530_channel*,int ,int) ;
 int z8530_flush_fifo (struct z8530_channel*) ;
 int z8530_tx_done (struct z8530_channel*) ;

__attribute__((used)) static void z8530_status(struct z8530_channel *chan)
{
 u8 status, altered;

 status = read_zsreg(chan, R0);
 altered = chan->status ^ status;

 chan->status = status;

 if (status & TxEOM) {

  chan->netdevice->stats.tx_fifo_errors++;
  write_zsctrl(chan, ERR_RES);
  z8530_tx_done(chan);
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
