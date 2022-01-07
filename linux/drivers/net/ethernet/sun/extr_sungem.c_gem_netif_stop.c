
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {int dev; int napi; } ;


 int napi_disable (int *) ;
 int netif_trans_update (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static inline void gem_netif_stop(struct gem *gp)
{
 netif_trans_update(gp->dev);
 napi_disable(&gp->napi);
 netif_tx_disable(gp->dev);
}
