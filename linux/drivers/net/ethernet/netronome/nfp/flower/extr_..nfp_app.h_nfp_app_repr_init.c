
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* repr_init ) (struct nfp_app*,struct net_device*) ;} ;


 int stub1 (struct nfp_app*,struct net_device*) ;

__attribute__((used)) static inline int
nfp_app_repr_init(struct nfp_app *app, struct net_device *netdev)
{
 if (!app->type->repr_init)
  return 0;
 return app->type->repr_init(app, netdev);
}
