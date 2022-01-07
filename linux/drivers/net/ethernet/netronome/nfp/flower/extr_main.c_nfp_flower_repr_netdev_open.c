
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_repr {TYPE_1__* netdev; } ;
struct nfp_app {int dummy; } ;
struct TYPE_2__ {int mtu; } ;


 int netif_tx_wake_all_queues (TYPE_1__*) ;
 int nfp_flower_cmsg_portmod (struct nfp_repr*,int,int ,int) ;

__attribute__((used)) static int
nfp_flower_repr_netdev_open(struct nfp_app *app, struct nfp_repr *repr)
{
 int err;

 err = nfp_flower_cmsg_portmod(repr, 1, repr->netdev->mtu, 0);
 if (err)
  return err;

 netif_tx_wake_all_queues(repr->netdev);

 return 0;
}
