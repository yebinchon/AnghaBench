
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct skb_shared_info {int dummy; } ;
struct hwbm_pool {int size; int buf_lock; struct mvneta_bm_pool* priv; int construct; scalar_t__ frag_size; } ;
struct mvneta_bm_pool {scalar_t__ type; int port_map; int pkt_size; int buf_size; int id; struct mvneta_bm* priv; struct hwbm_pool hwbm_pool; } ;
struct mvneta_bm {TYPE_1__* pdev; struct mvneta_bm_pool* bm_pools; } ;
typedef enum mvneta_bm_type { ____Placeholder_mvneta_bm_type } mvneta_bm_type ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MVNETA_BM_FREE ;
 scalar_t__ MVNETA_BM_LONG ;
 scalar_t__ MVNETA_BM_SHORT ;
 int MVNETA_RX_BUF_SIZE (int) ;
 scalar_t__ SKB_DATA_ALIGN (int) ;
 int WARN (int,char*,int ,int,int) ;
 int dev_err (int *,char*,...) ;
 int hwbm_pool_add (struct hwbm_pool*,int) ;
 int mutex_init (int *) ;
 int mvneta_bm_construct ;
 int mvneta_bm_pool_create (struct mvneta_bm*,struct mvneta_bm_pool*) ;

struct mvneta_bm_pool *mvneta_bm_pool_use(struct mvneta_bm *priv, u8 pool_id,
       enum mvneta_bm_type type, u8 port_id,
       int pkt_size)
{
 struct mvneta_bm_pool *new_pool = &priv->bm_pools[pool_id];
 int num, err;

 if (new_pool->type == MVNETA_BM_LONG &&
     new_pool->port_map != 1 << port_id) {
  dev_err(&priv->pdev->dev,
   "long pool cannot be shared by the ports\n");
  return ((void*)0);
 }

 if (new_pool->type == MVNETA_BM_SHORT && new_pool->type != type) {
  dev_err(&priv->pdev->dev,
   "mixing pools' types between the ports is forbidden\n");
  return ((void*)0);
 }

 if (new_pool->pkt_size == 0 || type != MVNETA_BM_SHORT)
  new_pool->pkt_size = pkt_size;


 if (new_pool->type == MVNETA_BM_FREE) {
  struct hwbm_pool *hwbm_pool = &new_pool->hwbm_pool;

  new_pool->priv = priv;
  new_pool->type = type;
  new_pool->buf_size = MVNETA_RX_BUF_SIZE(new_pool->pkt_size);
  hwbm_pool->frag_size =
   SKB_DATA_ALIGN(MVNETA_RX_BUF_SIZE(new_pool->pkt_size)) +
   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
  hwbm_pool->construct = mvneta_bm_construct;
  hwbm_pool->priv = new_pool;
  mutex_init(&hwbm_pool->buf_lock);


  err = mvneta_bm_pool_create(priv, new_pool);
  if (err) {
   dev_err(&priv->pdev->dev, "fail to create pool %d\n",
    new_pool->id);
   return ((void*)0);
  }


  num = hwbm_pool_add(hwbm_pool, hwbm_pool->size);
  if (num != hwbm_pool->size) {
   WARN(1, "pool %d: %d of %d allocated\n",
        new_pool->id, num, hwbm_pool->size);
   return ((void*)0);
  }
 }

 return new_pool;
}
