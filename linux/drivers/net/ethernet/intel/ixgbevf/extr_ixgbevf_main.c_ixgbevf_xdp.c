
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_bpf {int command; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {TYPE_2__* xdp_prog; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;


 int ixgbevf_xdp_setup (struct net_device*,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbevf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct ixgbevf_adapter *adapter = netdev_priv(dev);

 switch (xdp->command) {
 case 128:
  return ixgbevf_xdp_setup(dev, xdp->prog);
 case 129:
  xdp->prog_id = adapter->xdp_prog ?
          adapter->xdp_prog->aux->id : 0;
  return 0;
 default:
  return -EINVAL;
 }
}
