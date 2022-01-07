
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_queue_vector {int sw_thread_id; int first_rxq; int nrxqs; int irq; int napi; int type; int sw_thread_mask; struct mvpp2_port* port; } ;
struct mvpp2_port {int nqvecs; int flags; int nrxqs; struct mvpp2_queue_vector* qvecs; int dev; int fwnode; struct mvpp2* priv; } ;
struct mvpp2 {int nthreads; } ;
struct device_node {int dummy; } ;
typedef int irqname ;


 int BIT (int) ;
 int EINVAL ;
 int MVPP2_F_DT_COMPAT ;


 int MVPP2_QUEUE_VECTOR_PRIVATE ;
 int MVPP2_QUEUE_VECTOR_SHARED ;
 int NAPI_POLL_WEIGHT ;
 int fwnode_irq_get (int ,int) ;
 int irq_dispose_mapping (int ) ;
 int mvpp2_poll ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int of_irq_get_byname (struct device_node*,char*) ;
 int queue_mode ;
 int snprintf (char*,int,char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int mvpp2_multi_queue_vectors_init(struct mvpp2_port *port,
       struct device_node *port_node)
{
 struct mvpp2 *priv = port->priv;
 struct mvpp2_queue_vector *v;
 int i, ret;

 switch (queue_mode) {
 case 128:
  port->nqvecs = priv->nthreads + 1;
  break;
 case 129:
  port->nqvecs = priv->nthreads;
  break;
 }

 for (i = 0; i < port->nqvecs; i++) {
  char irqname[16];

  v = port->qvecs + i;

  v->port = port;
  v->type = MVPP2_QUEUE_VECTOR_PRIVATE;
  v->sw_thread_id = i;
  v->sw_thread_mask = BIT(i);

  if (port->flags & MVPP2_F_DT_COMPAT)
   snprintf(irqname, sizeof(irqname), "tx-cpu%d", i);
  else
   snprintf(irqname, sizeof(irqname), "hif%d", i);

  if (queue_mode == 129) {
   v->first_rxq = i;
   v->nrxqs = 1;
  } else if (queue_mode == 128 &&
      i == (port->nqvecs - 1)) {
   v->first_rxq = 0;
   v->nrxqs = port->nrxqs;
   v->type = MVPP2_QUEUE_VECTOR_SHARED;

   if (port->flags & MVPP2_F_DT_COMPAT)
    strncpy(irqname, "rx-shared", sizeof(irqname));
  }

  if (port_node)
   v->irq = of_irq_get_byname(port_node, irqname);
  else
   v->irq = fwnode_irq_get(port->fwnode, i);
  if (v->irq <= 0) {
   ret = -EINVAL;
   goto err;
  }

  netif_napi_add(port->dev, &v->napi, mvpp2_poll,
          NAPI_POLL_WEIGHT);
 }

 return 0;

err:
 for (i = 0; i < port->nqvecs; i++)
  irq_dispose_mapping(port->qvecs[i].irq);
 return ret;
}
