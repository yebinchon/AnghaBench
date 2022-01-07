
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fst_port_info {int index; int rxpos; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_2__ {int bits; } ;


 int DBG_ASS ;
 unsigned char DMA_OWN ;
 unsigned char FST_RDB (struct fst_card_info*,int ) ;
 int FST_WRB (struct fst_card_info*,int ,unsigned char) ;
 int NUM_RX_BUFFER ;
 unsigned char RX_STP ;
 int dbg (int ,char*,...) ;
 TYPE_1__** rxDescrRing ;

__attribute__((used)) static void
fst_recover_rx_error(struct fst_card_info *card, struct fst_port_info *port,
       unsigned char dmabits, int rxp, unsigned short len)
{
 int i;
 int pi;

 pi = port->index;





 i = 0;
 while ((dmabits & (DMA_OWN | RX_STP)) == 0) {
  FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);
  rxp = (rxp+1) % NUM_RX_BUFFER;
  if (++i > NUM_RX_BUFFER) {
   dbg(DBG_ASS, "intr_rx: Discarding more bufs"
       " than we have\n");
   break;
  }
  dmabits = FST_RDB(card, rxDescrRing[pi][rxp].bits);
  dbg(DBG_ASS, "DMA Bits of next buffer was %x\n", dmabits);
 }
 dbg(DBG_ASS, "There were %d subsequent buffers in error\n", i);


 if (!(dmabits & DMA_OWN)) {
  FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);
  rxp = (rxp+1) % NUM_RX_BUFFER;
 }
 port->rxpos = rxp;
 return;

}
