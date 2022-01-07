
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_tx_queue {scalar_t__ descs; } ;
struct mvpp2_port {int ntxqs; int priv; struct mvpp2_tx_queue** txqs; } ;


 int MVPP2_TXP_SCHED_PORT_INDEX_REG ;
 int MVPP2_TXP_SCHED_Q_CMD_REG ;
 int mvpp2_egress_port (struct mvpp2_port*) ;
 int mvpp2_write (int ,int ,int) ;

__attribute__((used)) static void mvpp2_egress_enable(struct mvpp2_port *port)
{
 u32 qmap;
 int queue;
 int tx_port_num = mvpp2_egress_port(port);


 qmap = 0;
 for (queue = 0; queue < port->ntxqs; queue++) {
  struct mvpp2_tx_queue *txq = port->txqs[queue];

  if (txq->descs)
   qmap |= (1 << queue);
 }

 mvpp2_write(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);
 mvpp2_write(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG, qmap);
}
