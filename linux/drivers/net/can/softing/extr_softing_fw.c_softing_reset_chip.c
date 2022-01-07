
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pending; } ;
struct softing {TYPE_1__ tx; int * dpram; } ;


 size_t DPRAM_RESET ;
 size_t DPRAM_RESET_RX_FIFO ;
 int current ;
 int iowrite8 (int,int *) ;
 scalar_t__ signal_pending (int ) ;
 int softing_fct_cmd (struct softing*,int ,char*) ;

__attribute__((used)) static int softing_reset_chip(struct softing *card)
{
 int ret;

 do {

  iowrite8(0, &card->dpram[DPRAM_RESET_RX_FIFO]);
  iowrite8(0, &card->dpram[DPRAM_RESET_RX_FIFO+1]);
  iowrite8(1, &card->dpram[DPRAM_RESET]);
  iowrite8(0, &card->dpram[DPRAM_RESET+1]);

  ret = softing_fct_cmd(card, 0, "reset_can");
  if (!ret)
   break;
  if (signal_pending(current))

   break;
 } while (1);
 card->tx.pending = 0;
 return ret;
}
