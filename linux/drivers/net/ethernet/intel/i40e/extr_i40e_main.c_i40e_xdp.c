
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int queue_id; int umem; } ;
struct netdev_bpf {int command; TYPE_2__ xsk; int prog_id; int prog; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {scalar_t__ type; TYPE_3__* xdp_prog; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_6__ {TYPE_1__* aux; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 scalar_t__ I40E_VSI_MAIN ;



 int i40e_xdp_setup (struct i40e_vsi*,int ) ;
 int i40e_xsk_umem_setup (struct i40e_vsi*,int ,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_xdp(struct net_device *dev,
      struct netdev_bpf *xdp)
{
 struct i40e_netdev_priv *np = netdev_priv(dev);
 struct i40e_vsi *vsi = np->vsi;

 if (vsi->type != I40E_VSI_MAIN)
  return -EINVAL;

 switch (xdp->command) {
 case 129:
  return i40e_xdp_setup(vsi, xdp->prog);
 case 130:
  xdp->prog_id = vsi->xdp_prog ? vsi->xdp_prog->aux->id : 0;
  return 0;
 case 128:
  return i40e_xsk_umem_setup(vsi, xdp->xsk.umem,
        xdp->xsk.queue_id);
 default:
  return -EINVAL;
 }
}
