
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_queue_vector {int nrxqs; int sw_thread_id; int first_rxq; } ;
struct mvpp2_port {int id; int nrxqs; int nqvecs; struct mvpp2_queue_vector* qvecs; struct mvpp2* priv; } ;
struct mvpp2 {scalar_t__ hw_version; } ;


 scalar_t__ MVPP21 ;
 int MVPP21_ISR_RXQ_GROUP_REG (int) ;
 int MVPP22_ISR_RXQ_GROUP_INDEX_GROUP_OFFSET ;
 int MVPP22_ISR_RXQ_GROUP_INDEX_REG ;
 int MVPP22_ISR_RXQ_SUB_GROUP_CONFIG_REG ;
 int MVPP22_ISR_RXQ_SUB_GROUP_SIZE_OFFSET ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static void mvpp2_rx_irqs_setup(struct mvpp2_port *port)
{
 struct mvpp2 *priv = port->priv;
 u32 val;
 int i;

 if (priv->hw_version == MVPP21) {
  mvpp2_write(priv, MVPP21_ISR_RXQ_GROUP_REG(port->id),
       port->nrxqs);
  return;
 }


 for (i = 0; i < port->nqvecs; i++) {
  struct mvpp2_queue_vector *qv = port->qvecs + i;

  if (!qv->nrxqs)
   continue;

  val = qv->sw_thread_id;
  val |= port->id << MVPP22_ISR_RXQ_GROUP_INDEX_GROUP_OFFSET;
  mvpp2_write(priv, MVPP22_ISR_RXQ_GROUP_INDEX_REG, val);

  val = qv->first_rxq;
  val |= qv->nrxqs << MVPP22_ISR_RXQ_SUB_GROUP_SIZE_OFFSET;
  mvpp2_write(priv, MVPP22_ISR_RXQ_SUB_GROUP_CONFIG_REG, val);
 }
}
