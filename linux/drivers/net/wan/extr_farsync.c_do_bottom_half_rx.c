
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fst_port_info {size_t rxpos; int run; } ;
struct fst_card_info {int nports; int card_no; int dmarx_in_progress; struct fst_port_info* ports; } ;
struct TYPE_2__ {int bits; } ;


 int DBG_RX ;
 int DMA_OWN ;
 int FST_RDB (struct fst_card_info*,int ) ;
 int dbg (int ,char*) ;
 int fst_int_task ;
 int fst_intr_rx (struct fst_card_info*,struct fst_port_info*) ;
 int fst_max_reads ;
 int fst_q_work_item (int *,int ) ;
 int fst_work_intq ;
 TYPE_1__** rxDescrRing ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
do_bottom_half_rx(struct fst_card_info *card)
{
 struct fst_port_info *port;
 int pi;
 int rx_count = 0;


 dbg(DBG_RX, "do_bottom_half_rx\n");
 for (pi = 0, port = card->ports; pi < card->nports; pi++, port++) {
  if (!port->run)
   continue;

  while (!(FST_RDB(card, rxDescrRing[pi][port->rxpos].bits)
    & DMA_OWN) && !(card->dmarx_in_progress)) {
   if (rx_count > fst_max_reads) {




    fst_q_work_item(&fst_work_intq, card->card_no);
    tasklet_schedule(&fst_int_task);
    break;
   }
   fst_intr_rx(card, port);
   rx_count++;
  }
 }
}
