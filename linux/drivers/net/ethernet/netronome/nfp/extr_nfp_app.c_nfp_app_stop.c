
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; int netdev_nb; } ;
struct TYPE_2__ {int (* stop ) (struct nfp_app*) ;} ;


 int stub1 (struct nfp_app*) ;
 int unregister_netdevice_notifier (int *) ;

void nfp_app_stop(struct nfp_app *app)
{
 unregister_netdevice_notifier(&app->netdev_nb);

 if (app->type->stop)
  app->type->stop(app);
}
