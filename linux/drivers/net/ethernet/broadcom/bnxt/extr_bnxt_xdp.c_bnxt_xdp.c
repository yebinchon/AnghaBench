
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_bpf {int command; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct bnxt {TYPE_2__* xdp_prog; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;


 int bnxt_xdp_set (struct bnxt*,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

int bnxt_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;

 switch (xdp->command) {
 case 128:
  rc = bnxt_xdp_set(bp, xdp->prog);
  break;
 case 129:
  xdp->prog_id = bp->xdp_prog ? bp->xdp_prog->aux->id : 0;
  rc = 0;
  break;
 default:
  rc = -EINVAL;
  break;
 }
 return rc;
}
