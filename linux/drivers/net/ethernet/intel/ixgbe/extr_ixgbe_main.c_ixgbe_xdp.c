
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int queue_id; int umem; } ;
struct netdev_bpf {int command; TYPE_3__ xsk; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {TYPE_2__* xdp_prog; } ;
struct TYPE_5__ {TYPE_1__* aux; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;



 int ixgbe_xdp_setup (struct net_device*,int ) ;
 int ixgbe_xsk_umem_setup (struct ixgbe_adapter*,int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);

 switch (xdp->command) {
 case 129:
  return ixgbe_xdp_setup(dev, xdp->prog);
 case 130:
  xdp->prog_id = adapter->xdp_prog ?
   adapter->xdp_prog->aux->id : 0;
  return 0;
 case 128:
  return ixgbe_xsk_umem_setup(adapter, xdp->xsk.umem,
         xdp->xsk.queue_id);

 default:
  return -EINVAL;
 }
}
