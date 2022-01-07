
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nicvf {TYPE_2__* xdp_prog; int pdev; } ;
struct netdev_bpf {int command; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_xdp_setup (struct nicvf*,int ) ;
 scalar_t__ pass1_silicon (int ) ;

__attribute__((used)) static int nicvf_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
{
 struct nicvf *nic = netdev_priv(netdev);





 if (pass1_silicon(nic->pdev))
  return -EOPNOTSUPP;

 switch (xdp->command) {
 case 128:
  return nicvf_xdp_setup(nic, xdp->prog);
 case 129:
  xdp->prog_id = nic->xdp_prog ? nic->xdp_prog->aux->id : 0;
  return 0;
 default:
  return -EINVAL;
 }
}
