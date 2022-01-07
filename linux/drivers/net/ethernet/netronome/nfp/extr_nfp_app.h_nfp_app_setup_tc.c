
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int (* setup_tc ) (struct nfp_app*,struct net_device*,int,void*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct nfp_app*,struct net_device*,int,void*) ;

__attribute__((used)) static inline int nfp_app_setup_tc(struct nfp_app *app,
       struct net_device *netdev,
       enum tc_setup_type type, void *type_data)
{
 if (!app || !app->type->setup_tc)
  return -EOPNOTSUPP;
 return app->type->setup_tc(app, netdev, type, type_data);
}
