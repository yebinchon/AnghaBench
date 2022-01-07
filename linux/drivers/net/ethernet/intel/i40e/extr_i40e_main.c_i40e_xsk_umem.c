
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct i40e_ring {int queue_index; TYPE_1__* vsi; } ;
struct TYPE_2__ {int netdev; int af_xdp_zc_qps; scalar_t__ alloc_queue_pairs; } ;


 int i40e_enabled_xdp_vsi (TYPE_1__*) ;
 scalar_t__ ring_is_xdp (struct i40e_ring*) ;
 int test_bit (int,int ) ;
 struct xdp_umem* xdp_get_umem_from_qid (int ,int) ;

__attribute__((used)) static struct xdp_umem *i40e_xsk_umem(struct i40e_ring *ring)
{
 bool xdp_on = i40e_enabled_xdp_vsi(ring->vsi);
 int qid = ring->queue_index;

 if (ring_is_xdp(ring))
  qid -= ring->vsi->alloc_queue_pairs;

 if (!xdp_on || !test_bit(qid, ring->vsi->af_xdp_zc_qps))
  return ((void*)0);

 return xdp_get_umem_from_qid(ring->vsi->netdev, qid);
}
