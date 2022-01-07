
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_id; int umem; } ;
struct netdev_bpf {int command; TYPE_1__ xsk; int prog_id; int prog; } ;
struct net_device {int dummy; } ;


 int EINVAL ;



 int mlx5e_xdp_query (struct net_device*) ;
 int mlx5e_xdp_set (struct net_device*,int ) ;
 int mlx5e_xsk_setup_umem (struct net_device*,int ,int ) ;

__attribute__((used)) static int mlx5e_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 switch (xdp->command) {
 case 129:
  return mlx5e_xdp_set(dev, xdp->prog);
 case 130:
  xdp->prog_id = mlx5e_xdp_query(dev);
  return 0;
 case 128:
  return mlx5e_xsk_setup_umem(dev, xdp->xsk.umem,
         xdp->xsk.queue_id);
 default:
  return -EINVAL;
 }
}
