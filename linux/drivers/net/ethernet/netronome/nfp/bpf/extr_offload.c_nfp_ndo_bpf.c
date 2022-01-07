
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
struct nfp_app {int priv; } ;
struct netdev_bpf {int command; int offmap; } ;




 int EINVAL ;
 int nfp_bpf_map_alloc (int ,int ) ;
 int nfp_bpf_map_free (int ,int ) ;

int nfp_ndo_bpf(struct nfp_app *app, struct nfp_net *nn, struct netdev_bpf *bpf)
{
 switch (bpf->command) {
 case 129:
  return nfp_bpf_map_alloc(app->priv, bpf->offmap);
 case 128:
  return nfp_bpf_map_free(app->priv, bpf->offmap);
 default:
  return -EINVAL;
 }
}
