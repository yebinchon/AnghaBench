
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int dummy; } ;
struct ixgbe_ring {int ring_idx; } ;
struct ixgbe_adapter {int netdev; int af_xdp_zc_qps; int xdp_prog; } ;


 int READ_ONCE (int ) ;
 int test_bit (int,int ) ;
 struct xdp_umem* xdp_get_umem_from_qid (int ,int) ;

struct xdp_umem *ixgbe_xsk_umem(struct ixgbe_adapter *adapter,
    struct ixgbe_ring *ring)
{
 bool xdp_on = READ_ONCE(adapter->xdp_prog);
 int qid = ring->ring_idx;

 if (!xdp_on || !test_bit(qid, adapter->af_xdp_zc_qps))
  return ((void*)0);

 return xdp_get_umem_from_qid(adapter->netdev, qid);
}
