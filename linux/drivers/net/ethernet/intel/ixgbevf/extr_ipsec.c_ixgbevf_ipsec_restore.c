
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_sa {int xs; scalar_t__ used; } ;
struct rx_sa {int xs; scalar_t__ used; } ;
struct net_device {int features; } ;
struct ixgbevf_ipsec {struct tx_sa* tx_tbl; struct rx_sa* rx_tbl; } ;
struct ixgbevf_adapter {struct net_device* netdev; struct ixgbevf_ipsec* ipsec; } ;


 int IXGBE_IPSEC_MAX_SA_COUNT ;
 int NETIF_F_HW_ESP ;
 int ixgbevf_ipsec_set_pf_sa (struct ixgbevf_adapter*,int ) ;
 int netdev_err (struct net_device*,char*,int,int) ;

void ixgbevf_ipsec_restore(struct ixgbevf_adapter *adapter)
{
 struct ixgbevf_ipsec *ipsec = adapter->ipsec;
 struct net_device *netdev = adapter->netdev;
 int i;

 if (!(adapter->netdev->features & NETIF_F_HW_ESP))
  return;


 for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT; i++) {
  struct rx_sa *r = &ipsec->rx_tbl[i];
  struct tx_sa *t = &ipsec->tx_tbl[i];
  int ret;

  if (r->used) {
   ret = ixgbevf_ipsec_set_pf_sa(adapter, r->xs);
   if (ret < 0)
    netdev_err(netdev, "reload rx_tbl[%d] failed = %d\n",
        i, ret);
  }

  if (t->used) {
   ret = ixgbevf_ipsec_set_pf_sa(adapter, t->xs);
   if (ret < 0)
    netdev_err(netdev, "reload tx_tbl[%d] failed = %d\n",
        i, ret);
  }
 }
}
