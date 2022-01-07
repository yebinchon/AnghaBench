
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {TYPE_2__* xdp_prog; } ;
struct netdev_bpf {int command; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_xdp_set (struct qede_dev*,int ) ;

int qede_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct qede_dev *edev = netdev_priv(dev);

 switch (xdp->command) {
 case 128:
  return qede_xdp_set(edev, xdp->prog);
 case 129:
  xdp->prog_id = edev->xdp_prog ? edev->xdp_prog->aux->id : 0;
  return 0;
 default:
  return -EINVAL;
 }
}
