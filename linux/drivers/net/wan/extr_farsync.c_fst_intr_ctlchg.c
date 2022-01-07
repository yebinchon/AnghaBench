
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_port_info {size_t index; scalar_t__ hwif; } ;
struct fst_card_info {int dummy; } ;


 int DBG_INTR ;
 int FST_RDL (struct fst_card_info*,int ) ;
 int IPSTS_DCD ;
 int IPSTS_INDICATE ;
 scalar_t__ X21 ;
 scalar_t__ X21D ;
 int dbg (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int port_to_dev (struct fst_port_info*) ;
 int * v24DebouncedSts ;

__attribute__((used)) static void
fst_intr_ctlchg(struct fst_card_info *card, struct fst_port_info *port)
{
 int signals;

 signals = FST_RDL(card, v24DebouncedSts[port->index]);

 if (signals & (((port->hwif == X21) || (port->hwif == X21D))
         ? IPSTS_INDICATE : IPSTS_DCD)) {
  if (!netif_carrier_ok(port_to_dev(port))) {
   dbg(DBG_INTR, "DCD active\n");
   netif_carrier_on(port_to_dev(port));
  }
 } else {
  if (netif_carrier_ok(port_to_dev(port))) {
   dbg(DBG_INTR, "DCD lost\n");
   netif_carrier_off(port_to_dev(port));
  }
 }
}
