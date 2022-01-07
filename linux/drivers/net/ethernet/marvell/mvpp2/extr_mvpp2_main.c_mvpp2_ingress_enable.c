
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {int nrxqs; int priv; TYPE_1__** rxqs; } ;
struct TYPE_2__ {int id; } ;


 int MVPP2_RXQ_CONFIG_REG (int) ;
 int MVPP2_RXQ_DISABLE_MASK ;
 int mvpp2_read (int ,int ) ;
 int mvpp2_write (int ,int ,int ) ;

__attribute__((used)) static void mvpp2_ingress_enable(struct mvpp2_port *port)
{
 u32 val;
 int lrxq, queue;

 for (lrxq = 0; lrxq < port->nrxqs; lrxq++) {
  queue = port->rxqs[lrxq]->id;
  val = mvpp2_read(port->priv, MVPP2_RXQ_CONFIG_REG(queue));
  val &= ~MVPP2_RXQ_DISABLE_MASK;
  mvpp2_write(port->priv, MVPP2_RXQ_CONFIG_REG(queue), val);
 }
}
