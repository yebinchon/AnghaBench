
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_app {TYPE_1__* type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* (* dev_get ) (struct nfp_app*,int ,int*) ;} ;


 struct net_device* stub1 (struct nfp_app*,int ,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline
struct net_device *nfp_app_dev_get(struct nfp_app *app, u32 id,
       bool *redir_egress)
{
 if (unlikely(!app || !app->type->dev_get))
  return ((void*)0);

 return app->type->dev_get(app, id, redir_egress);
}
