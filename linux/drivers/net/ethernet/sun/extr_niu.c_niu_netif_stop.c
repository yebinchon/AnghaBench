
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dev; } ;


 int netif_trans_update (int ) ;
 int netif_tx_disable (int ) ;
 int niu_disable_napi (struct niu*) ;

__attribute__((used)) static void niu_netif_stop(struct niu *np)
{
 netif_trans_update(np->dev);

 niu_disable_napi(np);

 netif_tx_disable(np->dev);
}
