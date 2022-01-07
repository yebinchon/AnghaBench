
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_bm_pool {int id; } ;
struct mvpp2 {struct mvpp2_bm_pool* bm_pools; scalar_t__ percpu_pools; } ;
struct device {int dummy; } ;


 int MVPP2_BM_POOLS_NUM ;
 int MVPP2_BM_POOL_SIZE_MAX ;
 int dev_err (struct device*,char*,int,int) ;
 int mvpp2_bm_pool_bufsize_set (struct mvpp2*,struct mvpp2_bm_pool*,int ) ;
 int mvpp2_bm_pool_create (struct device*,struct mvpp2*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_bm_pool_destroy (struct device*,struct mvpp2*,struct mvpp2_bm_pool*) ;
 int mvpp2_get_nrxqs (struct mvpp2*) ;

__attribute__((used)) static int mvpp2_bm_pools_init(struct device *dev, struct mvpp2 *priv)
{
 int i, err, size, poolnum = MVPP2_BM_POOLS_NUM;
 struct mvpp2_bm_pool *bm_pool;

 if (priv->percpu_pools)
  poolnum = mvpp2_get_nrxqs(priv) * 2;


 size = MVPP2_BM_POOL_SIZE_MAX;
 for (i = 0; i < poolnum; i++) {
  bm_pool = &priv->bm_pools[i];
  bm_pool->id = i;
  err = mvpp2_bm_pool_create(dev, priv, bm_pool, size);
  if (err)
   goto err_unroll_pools;
  mvpp2_bm_pool_bufsize_set(priv, bm_pool, 0);
 }
 return 0;

err_unroll_pools:
 dev_err(dev, "failed to create BM pool %d, size %d\n", i, size);
 for (i = i - 1; i >= 0; i--)
  mvpp2_bm_pool_destroy(dev, priv, &priv->bm_pools[i]);
 return err;
}
