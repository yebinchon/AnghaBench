
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * ptp_clock; int * ptp_tx_skb; } ;


 int dev_kfree_skb_any (int *) ;
 int ptp_clock_unregister (int *) ;

void cxgb4_ptp_stop(struct adapter *adapter)
{
 if (adapter->ptp_tx_skb) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
 }

 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  adapter->ptp_clock = ((void*)0);
 }
}
