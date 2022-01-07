
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct netdev_bpf {int dummy; } ;
struct TYPE_2__ {int (* bpf ) (struct nfp_app*,struct nfp_net*,struct netdev_bpf*) ;} ;


 int EINVAL ;
 int stub1 (struct nfp_app*,struct nfp_net*,struct netdev_bpf*) ;

__attribute__((used)) static inline int nfp_app_bpf(struct nfp_app *app, struct nfp_net *nn,
         struct netdev_bpf *bpf)
{
 if (!app || !app->type->bpf)
  return -EINVAL;
 return app->type->bpf(app, nn, bpf);
}
