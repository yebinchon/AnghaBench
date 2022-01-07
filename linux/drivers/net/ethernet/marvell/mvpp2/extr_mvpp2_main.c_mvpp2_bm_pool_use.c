
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mvpp2_port {unsigned int nrxqs; TYPE_4__* priv; TYPE_2__* dev; } ;
struct mvpp2_bm_pool {int pkt_size; int buf_num; int id; scalar_t__ frag_size; } ;
struct TYPE_10__ {scalar_t__ percpu_pools; struct mvpp2_bm_pool* bm_pools; } ;
struct TYPE_9__ {int buf_num; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 size_t MVPP2_BM_LONG ;
 unsigned int MVPP2_BM_POOLS_NUM ;
 size_t MVPP2_BM_SHORT ;
 int MVPP2_RX_BUF_SIZE (int) ;
 scalar_t__ MVPP2_SKB_SHINFO_SIZE ;
 scalar_t__ SKB_DATA_ALIGN (int ) ;
 int WARN (int,char*,int ,int,int) ;
 int mvpp2_bm_bufs_add (struct mvpp2_port*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_bm_bufs_free (int ,TYPE_4__*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_bm_pool_bufsize_set (TYPE_4__*,struct mvpp2_bm_pool*,int ) ;
 int mvpp2_get_nrxqs (TYPE_4__*) ;
 TYPE_3__* mvpp2_pools ;
 int netdev_err (TYPE_2__*,char*,unsigned int) ;

__attribute__((used)) static struct mvpp2_bm_pool *
mvpp2_bm_pool_use(struct mvpp2_port *port, unsigned pool, int pkt_size)
{
 struct mvpp2_bm_pool *new_pool = &port->priv->bm_pools[pool];
 int num;

 if ((port->priv->percpu_pools && pool > mvpp2_get_nrxqs(port->priv) * 2) ||
     (!port->priv->percpu_pools && pool >= MVPP2_BM_POOLS_NUM)) {
  netdev_err(port->dev, "Invalid pool %d\n", pool);
  return ((void*)0);
 }




 if (new_pool->pkt_size == 0) {
  int pkts_num;




  pkts_num = new_pool->buf_num;
  if (pkts_num == 0) {
   if (port->priv->percpu_pools) {
    if (pool < port->nrxqs)
     pkts_num = mvpp2_pools[MVPP2_BM_SHORT].buf_num;
    else
     pkts_num = mvpp2_pools[MVPP2_BM_LONG].buf_num;
   } else {
    pkts_num = mvpp2_pools[pool].buf_num;
   }
  } else {
   mvpp2_bm_bufs_free(port->dev->dev.parent,
        port->priv, new_pool, pkts_num);
  }

  new_pool->pkt_size = pkt_size;
  new_pool->frag_size =
   SKB_DATA_ALIGN(MVPP2_RX_BUF_SIZE(pkt_size)) +
   MVPP2_SKB_SHINFO_SIZE;


  num = mvpp2_bm_bufs_add(port, new_pool, pkts_num);
  if (num != pkts_num) {
   WARN(1, "pool %d: %d of %d allocated\n",
        new_pool->id, num, pkts_num);
   return ((void*)0);
  }
 }

 mvpp2_bm_pool_bufsize_set(port->priv, new_pool,
      MVPP2_RX_BUF_SIZE(new_pool->pkt_size));

 return new_pool;
}
