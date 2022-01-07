
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int xdp_hw; int app; } ;
struct netdev_bpf {int extack; int prog; } ;


 int EBUSY ;
 int nfp_app_xdp_offload (int ,struct nfp_net*,int ,int ) ;
 int xdp_attachment_flags_ok (int *,struct netdev_bpf*) ;
 int xdp_attachment_setup (int *,struct netdev_bpf*) ;

__attribute__((used)) static int nfp_net_xdp_setup_hw(struct nfp_net *nn, struct netdev_bpf *bpf)
{
 int err;

 if (!xdp_attachment_flags_ok(&nn->xdp_hw, bpf))
  return -EBUSY;

 err = nfp_app_xdp_offload(nn->app, nn, bpf->prog, bpf->extack);
 if (err)
  return err;

 xdp_attachment_setup(&nn->xdp_hw, bpf);
 return 0;
}
