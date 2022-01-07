
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {int flags; size_t offload_handle; struct net_device* dev; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct tx_sa {int dummy; } ;
struct rx_sa {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ipsec {int num_tx_sa; TYPE_2__* tx_tbl; int num_rx_sa; TYPE_2__* rx_tbl; } ;
struct ixgbevf_adapter {struct ixgbevf_ipsec* ipsec; } ;
struct TYPE_4__ {int pfsa; int used; int hlist; } ;


 size_t IXGBE_IPSEC_BASE_RX_INDEX ;
 size_t IXGBE_IPSEC_BASE_TX_INDEX ;
 int XFRM_OFFLOAD_INBOUND ;
 int hash_del_rcu (int *) ;
 int ixgbevf_ipsec_del_pf_sa (struct ixgbevf_adapter*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int netdev_err (struct net_device*,char*,size_t,size_t) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbevf_ipsec_del_sa(struct xfrm_state *xs)
{
 struct net_device *dev = xs->xso.dev;
 struct ixgbevf_adapter *adapter = netdev_priv(dev);
 struct ixgbevf_ipsec *ipsec = adapter->ipsec;
 u16 sa_idx;

 if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
  sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_RX_INDEX;

  if (!ipsec->rx_tbl[sa_idx].used) {
   netdev_err(dev, "Invalid Rx SA selected sa_idx=%d offload_handle=%lu\n",
       sa_idx, xs->xso.offload_handle);
   return;
  }

  ixgbevf_ipsec_del_pf_sa(adapter, ipsec->rx_tbl[sa_idx].pfsa);
  hash_del_rcu(&ipsec->rx_tbl[sa_idx].hlist);
  memset(&ipsec->rx_tbl[sa_idx], 0, sizeof(struct rx_sa));
  ipsec->num_rx_sa--;
 } else {
  sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_TX_INDEX;

  if (!ipsec->tx_tbl[sa_idx].used) {
   netdev_err(dev, "Invalid Tx SA selected sa_idx=%d offload_handle=%lu\n",
       sa_idx, xs->xso.offload_handle);
   return;
  }

  ixgbevf_ipsec_del_pf_sa(adapter, ipsec->tx_tbl[sa_idx].pfsa);
  memset(&ipsec->tx_tbl[sa_idx], 0, sizeof(struct tx_sa));
  ipsec->num_tx_sa--;
 }
}
