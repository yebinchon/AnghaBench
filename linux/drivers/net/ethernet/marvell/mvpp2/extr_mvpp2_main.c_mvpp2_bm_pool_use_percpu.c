
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mvpp2_port {int nrxqs; TYPE_4__* priv; TYPE_2__* dev; } ;
struct mvpp2_bm_pool {int pkt_size; int buf_num; int id; scalar_t__ frag_size; } ;
struct TYPE_9__ {struct mvpp2_bm_pool* bm_pools; } ;
struct TYPE_8__ {int buf_num; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int MVPP2_RX_BUF_SIZE (int) ;
 scalar_t__ MVPP2_SKB_SHINFO_SIZE ;
 scalar_t__ SKB_DATA_ALIGN (int ) ;
 int WARN (int,char*,int ,int,int) ;
 int mvpp2_bm_bufs_add (struct mvpp2_port*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_bm_bufs_free (int ,TYPE_4__*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_bm_pool_bufsize_set (TYPE_4__*,struct mvpp2_bm_pool*,int ) ;
 TYPE_3__* mvpp2_pools ;
 int netdev_err (TYPE_2__*,char*,unsigned int) ;

__attribute__((used)) static struct mvpp2_bm_pool *
mvpp2_bm_pool_use_percpu(struct mvpp2_port *port, int type,
    unsigned int pool, int pkt_size)
{
 struct mvpp2_bm_pool *new_pool = &port->priv->bm_pools[pool];
 int num;

 if (pool > port->nrxqs * 2) {
  netdev_err(port->dev, "Invalid pool %d\n", pool);
  return ((void*)0);
 }




 if (new_pool->pkt_size == 0) {
  int pkts_num;




  pkts_num = new_pool->buf_num;
  if (pkts_num == 0)
   pkts_num = mvpp2_pools[type].buf_num;
  else
   mvpp2_bm_bufs_free(port->dev->dev.parent,
        port->priv, new_pool, pkts_num);

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
