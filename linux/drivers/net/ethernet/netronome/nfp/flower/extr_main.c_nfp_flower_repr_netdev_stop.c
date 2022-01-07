
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_repr {TYPE_1__* netdev; } ;
struct nfp_app {int dummy; } ;
struct TYPE_2__ {int mtu; } ;


 int netif_tx_disable (TYPE_1__*) ;
 int nfp_flower_cmsg_portmod (struct nfp_repr*,int,int ,int) ;

__attribute__((used)) static int
nfp_flower_repr_netdev_stop(struct nfp_app *app, struct nfp_repr *repr)
{
 netif_tx_disable(repr->netdev);

 return nfp_flower_cmsg_portmod(repr, 0, repr->netdev->mtu, 0);
}
