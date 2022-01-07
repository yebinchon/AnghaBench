
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netsec_priv {TYPE_2__* xdp_prog; } ;
struct netdev_bpf {int command; int prog_id; int extack; int prog; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;


 struct netsec_priv* netdev_priv (struct net_device*) ;
 int netsec_xdp_setup (struct netsec_priv*,int ,int ) ;

__attribute__((used)) static int netsec_xdp(struct net_device *ndev, struct netdev_bpf *xdp)
{
 struct netsec_priv *priv = netdev_priv(ndev);

 switch (xdp->command) {
 case 128:
  return netsec_xdp_setup(priv, xdp->prog, xdp->extack);
 case 129:
  xdp->prog_id = priv->xdp_prog ? priv->xdp_prog->aux->id : 0;
  return 0;
 default:
  return -EINVAL;
 }
}
