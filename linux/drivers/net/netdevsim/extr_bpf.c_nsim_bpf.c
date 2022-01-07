
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim {int bpf_map_accept; int xdp_hw; int xdp; } ;
struct netdev_bpf {int command; int offmap; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;


 int EINVAL ;
 int EOPNOTSUPP ;




 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_bpf_map_alloc (struct netdevsim*,int ) ;
 int nsim_bpf_map_free (int ) ;
 int nsim_setup_prog_checks (struct netdevsim*,struct netdev_bpf*) ;
 int nsim_setup_prog_hw_checks (struct netdevsim*,struct netdev_bpf*) ;
 int nsim_xdp_set_prog (struct netdevsim*,struct netdev_bpf*,int *) ;
 int xdp_attachment_query (int *,struct netdev_bpf*) ;

int nsim_bpf(struct net_device *dev, struct netdev_bpf *bpf)
{
 struct netdevsim *ns = netdev_priv(dev);
 int err;

 ASSERT_RTNL();

 switch (bpf->command) {
 case 131:
  return xdp_attachment_query(&ns->xdp, bpf);
 case 130:
  return xdp_attachment_query(&ns->xdp_hw, bpf);
 case 129:
  err = nsim_setup_prog_checks(ns, bpf);
  if (err)
   return err;

  return nsim_xdp_set_prog(ns, bpf, &ns->xdp);
 case 128:
  err = nsim_setup_prog_hw_checks(ns, bpf);
  if (err)
   return err;

  return nsim_xdp_set_prog(ns, bpf, &ns->xdp_hw);
 case 133:
  if (!ns->bpf_map_accept)
   return -EOPNOTSUPP;

  return nsim_bpf_map_alloc(ns, bpf->offmap);
 case 132:
  nsim_bpf_map_free(bpf->offmap);
  return 0;
 default:
  return -EINVAL;
 }
}
