
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mvpp2_port {int nrxqs; int * pool_short; int * pool_long; TYPE_2__* priv; int id; } ;
struct mvpp2_bm_pool {int dummy; } ;
struct TYPE_6__ {int pkt_size; } ;
struct TYPE_5__ {TYPE_1__* bm_pools; } ;
struct TYPE_4__ {int id; int port_map; } ;


 int BIT (int ) ;
 int ENOMEM ;
 size_t MVPP2_BM_LONG ;
 size_t MVPP2_BM_SHORT ;
 struct mvpp2_bm_pool* mvpp2_bm_pool_use_percpu (struct mvpp2_port*,size_t,int,int ) ;
 TYPE_3__* mvpp2_pools ;
 int mvpp2_rxq_long_pool_set (struct mvpp2_port*,int,int ) ;
 int mvpp2_rxq_short_pool_set (struct mvpp2_port*,int,int ) ;

__attribute__((used)) static int mvpp2_swf_bm_pool_init_percpu(struct mvpp2_port *port)
{
 struct mvpp2_bm_pool *p;
 int i;

 for (i = 0; i < port->nrxqs; i++) {
  p = mvpp2_bm_pool_use_percpu(port, MVPP2_BM_SHORT, i,
          mvpp2_pools[MVPP2_BM_SHORT].pkt_size);
  if (!p)
   return -ENOMEM;

  port->priv->bm_pools[i].port_map |= BIT(port->id);
  mvpp2_rxq_short_pool_set(port, i, port->priv->bm_pools[i].id);
 }

 for (i = 0; i < port->nrxqs; i++) {
  p = mvpp2_bm_pool_use_percpu(port, MVPP2_BM_LONG, i + port->nrxqs,
          mvpp2_pools[MVPP2_BM_LONG].pkt_size);
  if (!p)
   return -ENOMEM;

  port->priv->bm_pools[i + port->nrxqs].port_map |= BIT(port->id);
  mvpp2_rxq_long_pool_set(port, i,
     port->priv->bm_pools[i + port->nrxqs].id);
 }

 port->pool_long = ((void*)0);
 port->pool_short = ((void*)0);

 return 0;
}
