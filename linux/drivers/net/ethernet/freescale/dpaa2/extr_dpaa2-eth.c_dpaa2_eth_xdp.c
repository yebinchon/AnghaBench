
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_bpf {int command; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct dpaa2_eth_priv {TYPE_2__* xdp_prog; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;


 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int setup_xdp (struct net_device*,int ) ;

__attribute__((used)) static int dpaa2_eth_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct dpaa2_eth_priv *priv = netdev_priv(dev);

 switch (xdp->command) {
 case 128:
  return setup_xdp(dev, xdp->prog);
 case 129:
  xdp->prog_id = priv->xdp_prog ? priv->xdp_prog->aux->id : 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
