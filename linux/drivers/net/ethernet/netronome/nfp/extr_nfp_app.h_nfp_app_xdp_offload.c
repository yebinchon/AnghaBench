
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct netlink_ext_ack {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int (* xdp_offload ) (struct nfp_app*,struct nfp_net*,struct bpf_prog*,struct netlink_ext_ack*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct nfp_app*,struct nfp_net*,struct bpf_prog*,struct netlink_ext_ack*) ;

__attribute__((used)) static inline int nfp_app_xdp_offload(struct nfp_app *app, struct nfp_net *nn,
          struct bpf_prog *prog,
          struct netlink_ext_ack *extack)
{
 if (!app || !app->type->xdp_offload)
  return -EOPNOTSUPP;
 return app->type->xdp_offload(app, nn, prog, extack);
}
