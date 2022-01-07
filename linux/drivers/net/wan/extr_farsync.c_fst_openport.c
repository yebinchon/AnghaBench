
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fst_port_info {int run; size_t index; scalar_t__ hwif; scalar_t__ txqs; scalar_t__ txqe; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int DBG_OPEN ;
 int FST_RDL (TYPE_1__*,int ) ;
 scalar_t__ FST_RUNNING ;
 int IPSTS_DCD ;
 int IPSTS_INDICATE ;
 int OPSTS_DTR ;
 int OPSTS_RTS ;
 int STARTPORT ;
 int STOPPORT ;
 scalar_t__ X21 ;
 scalar_t__ X21D ;
 int dbg (int ,char*) ;
 int fst_issue_cmd (struct fst_port_info*,int ) ;
 int fst_op_raise (struct fst_port_info*,int) ;
 int fst_rx_config (struct fst_port_info*) ;
 int fst_tx_config (struct fst_port_info*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int port_to_dev (struct fst_port_info*) ;
 int * v24DebouncedSts ;

__attribute__((used)) static void
fst_openport(struct fst_port_info *port)
{
 int signals;




 if (port->card->state == FST_RUNNING) {
  if (port->run) {
   dbg(DBG_OPEN, "open: found port already running\n");

   fst_issue_cmd(port, STOPPORT);
   port->run = 0;
  }

  fst_rx_config(port);
  fst_tx_config(port);
  fst_op_raise(port, OPSTS_RTS | OPSTS_DTR);

  fst_issue_cmd(port, STARTPORT);
  port->run = 1;

  signals = FST_RDL(port->card, v24DebouncedSts[port->index]);
  if (signals & (((port->hwif == X21) || (port->hwif == X21D))
          ? IPSTS_INDICATE : IPSTS_DCD))
   netif_carrier_on(port_to_dev(port));
  else
   netif_carrier_off(port_to_dev(port));

  port->txqe = 0;
  port->txqs = 0;
 }

}
