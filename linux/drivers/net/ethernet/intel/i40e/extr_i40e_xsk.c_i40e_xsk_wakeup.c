
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct i40e_vsi {size_t num_queue_pairs; struct i40e_ring** xdp_rings; int state; } ;
struct i40e_ring {TYPE_1__* q_vector; int xsk_umem; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_2__ {int napi; } ;


 int ENETDOWN ;
 int ENXIO ;
 int __I40E_VSI_DOWN ;
 int i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_force_wb (struct i40e_vsi*,TYPE_1__*) ;
 int napi_if_scheduled_mark_missed (int *) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;

int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
{
 struct i40e_netdev_priv *np = netdev_priv(dev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_ring *ring;

 if (test_bit(__I40E_VSI_DOWN, vsi->state))
  return -ENETDOWN;

 if (!i40e_enabled_xdp_vsi(vsi))
  return -ENXIO;

 if (queue_id >= vsi->num_queue_pairs)
  return -ENXIO;

 if (!vsi->xdp_rings[queue_id]->xsk_umem)
  return -ENXIO;

 ring = vsi->xdp_rings[queue_id];







 if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi))
  i40e_force_wb(vsi, ring->q_vector);

 return 0;
}
