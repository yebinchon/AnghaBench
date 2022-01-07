
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ipsec {struct ixgbevf_ipsec* tx_tbl; struct ixgbevf_ipsec* rx_tbl; } ;
struct ixgbevf_adapter {struct ixgbevf_ipsec* ipsec; } ;


 int kfree (struct ixgbevf_ipsec*) ;

void ixgbevf_stop_ipsec_offload(struct ixgbevf_adapter *adapter)
{
 struct ixgbevf_ipsec *ipsec = adapter->ipsec;

 adapter->ipsec = ((void*)0);
 if (ipsec) {
  kfree(ipsec->rx_tbl);
  kfree(ipsec->tx_tbl);
  kfree(ipsec);
 }
}
