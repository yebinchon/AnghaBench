
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_queue_vector {scalar_t__ irq; int napi; struct mvpp2_port* port; int sw_thread_mask; scalar_t__ sw_thread_id; int type; int nrxqs; scalar_t__ first_rxq; } ;
struct mvpp2_port {int nqvecs; int dev; int nrxqs; struct mvpp2_queue_vector* qvecs; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int MVPP2_QUEUE_VECTOR_SHARED ;
 int NAPI_POLL_WEIGHT ;
 int cpu_online_mask ;
 int * cpumask_bits (int ) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int mvpp2_poll ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static int mvpp2_simple_queue_vectors_init(struct mvpp2_port *port,
        struct device_node *port_node)
{
 struct mvpp2_queue_vector *v = &port->qvecs[0];

 v->first_rxq = 0;
 v->nrxqs = port->nrxqs;
 v->type = MVPP2_QUEUE_VECTOR_SHARED;
 v->sw_thread_id = 0;
 v->sw_thread_mask = *cpumask_bits(cpu_online_mask);
 v->port = port;
 v->irq = irq_of_parse_and_map(port_node, 0);
 if (v->irq <= 0)
  return -EINVAL;
 netif_napi_add(port->dev, &v->napi, mvpp2_poll,
         NAPI_POLL_WEIGHT);

 port->nqvecs = 1;

 return 0;
}
