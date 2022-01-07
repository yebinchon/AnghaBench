
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* ndo_init ) (struct nfp_app*,struct net_device*) ;} ;


 struct nfp_app* nfp_app_from_netdev (struct net_device*) ;
 int stub1 (struct nfp_app*,struct net_device*) ;

int nfp_app_ndo_init(struct net_device *netdev)
{
 struct nfp_app *app = nfp_app_from_netdev(netdev);

 if (!app || !app->type->ndo_init)
  return 0;
 return app->type->ndo_init(app, netdev);
}
