
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_xsk_umem_disable (struct ixgbe_adapter*,int ) ;
 int ixgbe_xsk_umem_enable (struct ixgbe_adapter*,struct xdp_umem*,int ) ;

int ixgbe_xsk_umem_setup(struct ixgbe_adapter *adapter, struct xdp_umem *umem,
    u16 qid)
{
 return umem ? ixgbe_xsk_umem_enable(adapter, umem, qid) :
  ixgbe_xsk_umem_disable(adapter, qid);
}
