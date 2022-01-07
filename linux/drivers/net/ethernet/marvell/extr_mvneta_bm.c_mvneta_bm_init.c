
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvneta_bm_pool {int dummy; } ;
struct mvneta_bm {int bm_pools; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MVNETA_BM_POOLS_NUM ;
 int devm_kcalloc (int *,int ,int,int ) ;
 int mvneta_bm_default_set (struct mvneta_bm*) ;
 int mvneta_bm_pools_init (struct mvneta_bm*) ;

__attribute__((used)) static int mvneta_bm_init(struct mvneta_bm *priv)
{
 mvneta_bm_default_set(priv);


 priv->bm_pools = devm_kcalloc(&priv->pdev->dev, MVNETA_BM_POOLS_NUM,
          sizeof(struct mvneta_bm_pool),
          GFP_KERNEL);
 if (!priv->bm_pools)
  return -ENOMEM;

 mvneta_bm_pools_init(priv);

 return 0;
}
