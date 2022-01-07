
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {int napi; int dev; } ;


 int napi_enable (int *) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static inline void gem_netif_start(struct gem *gp)
{




 netif_wake_queue(gp->dev);
 napi_enable(&gp->napi);
}
