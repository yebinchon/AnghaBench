
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int pkt_size; int ntxqs; int priv; } ;


 int MVPP2_TXP_MTU_MAX ;
 int MVPP2_TXP_SCHED_MTU_REG ;
 int MVPP2_TXP_SCHED_PORT_INDEX_REG ;
 int MVPP2_TXP_SCHED_TOKEN_SIZE_REG ;
 int MVPP2_TXP_TOKEN_SIZE_MAX ;
 int MVPP2_TXQ_SCHED_TOKEN_SIZE_REG (int) ;
 int MVPP2_TXQ_TOKEN_SIZE_MAX ;
 int mvpp2_egress_port (struct mvpp2_port*) ;
 int mvpp2_read (int ,int ) ;
 int mvpp2_write (int ,int ,int) ;

__attribute__((used)) static void mvpp2_txp_max_tx_size_set(struct mvpp2_port *port)
{
 u32 val, size, mtu;
 int txq, tx_port_num;

 mtu = port->pkt_size * 8;
 if (mtu > MVPP2_TXP_MTU_MAX)
  mtu = MVPP2_TXP_MTU_MAX;


 mtu = 3 * mtu;


 tx_port_num = mvpp2_egress_port(port);
 mvpp2_write(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);


 val = mvpp2_read(port->priv, MVPP2_TXP_SCHED_MTU_REG);
 val &= ~MVPP2_TXP_MTU_MAX;
 val |= mtu;
 mvpp2_write(port->priv, MVPP2_TXP_SCHED_MTU_REG, val);


 val = mvpp2_read(port->priv, MVPP2_TXP_SCHED_TOKEN_SIZE_REG);
 size = val & MVPP2_TXP_TOKEN_SIZE_MAX;
 if (size < mtu) {
  size = mtu;
  val &= ~MVPP2_TXP_TOKEN_SIZE_MAX;
  val |= size;
  mvpp2_write(port->priv, MVPP2_TXP_SCHED_TOKEN_SIZE_REG, val);
 }

 for (txq = 0; txq < port->ntxqs; txq++) {
  val = mvpp2_read(port->priv,
     MVPP2_TXQ_SCHED_TOKEN_SIZE_REG(txq));
  size = val & MVPP2_TXQ_TOKEN_SIZE_MAX;

  if (size < mtu) {
   size = mtu;
   val &= ~MVPP2_TXQ_TOKEN_SIZE_MAX;
   val |= size;
   mvpp2_write(port->priv,
        MVPP2_TXQ_SCHED_TOKEN_SIZE_REG(txq),
        val);
  }
 }
}
