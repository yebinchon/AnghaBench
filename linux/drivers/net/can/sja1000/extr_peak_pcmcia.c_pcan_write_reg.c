
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pcan_pccard {scalar_t__ ccr; scalar_t__ ioport_addr; } ;


 int PCC_CCR ;
 scalar_t__ PCC_COMN_OFF ;
 int iowrite8 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void pcan_write_reg(struct pcan_pccard *card, int port, u8 v)
{

 if (port == PCC_CCR) {
  if (card->ccr == v)
   return;
  card->ccr = v;
 }

 iowrite8(v, card->ioport_addr + PCC_COMN_OFF + port);
}
