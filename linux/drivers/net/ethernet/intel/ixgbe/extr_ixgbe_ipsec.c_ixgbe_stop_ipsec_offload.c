
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ipsec {struct ixgbe_ipsec* tx_tbl; struct ixgbe_ipsec* rx_tbl; struct ixgbe_ipsec* ip_tbl; } ;
struct ixgbe_adapter {struct ixgbe_ipsec* ipsec; } ;


 int kfree (struct ixgbe_ipsec*) ;

void ixgbe_stop_ipsec_offload(struct ixgbe_adapter *adapter)
{
 struct ixgbe_ipsec *ipsec = adapter->ipsec;

 adapter->ipsec = ((void*)0);
 if (ipsec) {
  kfree(ipsec->ip_tbl);
  kfree(ipsec->rx_tbl);
  kfree(ipsec->tx_tbl);
  kfree(ipsec);
 }
}
