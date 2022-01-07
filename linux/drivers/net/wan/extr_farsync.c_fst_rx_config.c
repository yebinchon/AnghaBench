
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fst_port_info {int index; scalar_t__ rxpos; struct fst_card_info* card; } ;
struct fst_card_info {int card_lock; } ;
struct TYPE_2__ {int bits; int mcnt; int bcnt; int hadr; int ladr; } ;


 unsigned int BUF_OFFSET (int ) ;
 int DMA_OWN ;
 int FST_WRB (struct fst_card_info*,int ,int ) ;
 int FST_WRW (struct fst_card_info*,int ,int ) ;
 int LEN_RX_BUFFER ;
 int NUM_RX_BUFFER ;
 int cnv_bcnt (int ) ;
 int *** rxBuffer ;
 TYPE_1__** rxDescrRing ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fst_rx_config(struct fst_port_info *port)
{
 int i;
 int pi;
 unsigned int offset;
 unsigned long flags;
 struct fst_card_info *card;

 pi = port->index;
 card = port->card;
 spin_lock_irqsave(&card->card_lock, flags);
 for (i = 0; i < NUM_RX_BUFFER; i++) {
  offset = BUF_OFFSET(rxBuffer[pi][i][0]);

  FST_WRW(card, rxDescrRing[pi][i].ladr, (u16) offset);
  FST_WRB(card, rxDescrRing[pi][i].hadr, (u8) (offset >> 16));
  FST_WRW(card, rxDescrRing[pi][i].bcnt, cnv_bcnt(LEN_RX_BUFFER));
  FST_WRW(card, rxDescrRing[pi][i].mcnt, LEN_RX_BUFFER);
  FST_WRB(card, rxDescrRing[pi][i].bits, DMA_OWN);
 }
 port->rxpos = 0;
 spin_unlock_irqrestore(&card->card_lock, flags);
}
