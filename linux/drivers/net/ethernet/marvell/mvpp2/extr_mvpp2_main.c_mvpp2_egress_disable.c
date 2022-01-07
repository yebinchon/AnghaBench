
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int priv; int dev; } ;


 int MVPP2_TXP_SCHED_DISQ_OFFSET ;
 int MVPP2_TXP_SCHED_ENQ_MASK ;
 int MVPP2_TXP_SCHED_PORT_INDEX_REG ;
 int MVPP2_TXP_SCHED_Q_CMD_REG ;
 int MVPP2_TX_DISABLE_TIMEOUT_MSEC ;
 int mdelay (int) ;
 int mvpp2_egress_port (struct mvpp2_port*) ;
 int mvpp2_read (int ,int ) ;
 int mvpp2_write (int ,int ,int) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static void mvpp2_egress_disable(struct mvpp2_port *port)
{
 u32 reg_data;
 int delay;
 int tx_port_num = mvpp2_egress_port(port);


 mvpp2_write(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);
 reg_data = (mvpp2_read(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG)) &
      MVPP2_TXP_SCHED_ENQ_MASK;
 if (reg_data != 0)
  mvpp2_write(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG,
       (reg_data << MVPP2_TXP_SCHED_DISQ_OFFSET));


 delay = 0;
 do {
  if (delay >= MVPP2_TX_DISABLE_TIMEOUT_MSEC) {
   netdev_warn(port->dev,
        "Tx stop timed out, status=0x%08x\n",
        reg_data);
   break;
  }
  mdelay(1);
  delay++;




  reg_data = mvpp2_read(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG);
 } while (reg_data & MVPP2_TXP_SCHED_ENQ_MASK);
}
