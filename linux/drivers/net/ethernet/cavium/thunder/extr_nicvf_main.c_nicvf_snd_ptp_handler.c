
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ts ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct nicvf {int * ptp_skb; int ptp_clock; int tx_ptp_skbs; struct nicvf* pnicvf; } ;
struct net_device {int dummy; } ;
struct cqe_send_t {scalar_t__ send_status; int ptp_timestamp; } ;


 scalar_t__ CQ_TX_ERROP_TSTMP_CONFLICT ;
 scalar_t__ CQ_TX_ERROP_TSTMP_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int cavium_ptp_tstamp2time (int ,int ) ;
 int dev_kfree_skb_any (int *) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int ns_to_ktime (int ) ;
 int skb_tstamp_tx (int *,struct skb_shared_hwtstamps*) ;
 int smp_rmb () ;
 int smp_wmb () ;

__attribute__((used)) static void nicvf_snd_ptp_handler(struct net_device *netdev,
      struct cqe_send_t *cqe_tx)
{
 struct nicvf *nic = netdev_priv(netdev);
 struct skb_shared_hwtstamps ts;
 u64 ns;

 nic = nic->pnicvf;


 smp_rmb();


 atomic_set(&nic->tx_ptp_skbs, 0);


 if (!nic->ptp_skb)
  return;


 if (cqe_tx->send_status == CQ_TX_ERROP_TSTMP_TIMEOUT ||
     cqe_tx->send_status == CQ_TX_ERROP_TSTMP_CONFLICT)
  goto no_tstamp;


 memset(&ts, 0, sizeof(ts));
 ns = cavium_ptp_tstamp2time(nic->ptp_clock, cqe_tx->ptp_timestamp);
 ts.hwtstamp = ns_to_ktime(ns);
 skb_tstamp_tx(nic->ptp_skb, &ts);

no_tstamp:

 dev_kfree_skb_any(nic->ptp_skb);
 nic->ptp_skb = ((void*)0);

 smp_wmb();
}
