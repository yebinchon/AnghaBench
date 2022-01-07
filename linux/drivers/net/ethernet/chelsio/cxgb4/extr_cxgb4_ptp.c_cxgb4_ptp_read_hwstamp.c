
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct port_info {int port_id; } ;
struct adapter {int ptp_lock; int * ptp_tx_skb; } ;


 int MAC_PORT_TX_TS_VAL_HI ;
 int MAC_PORT_TX_TS_VAL_LO ;
 int T5_PORT_REG (int ,int ) ;
 int dev_kfree_skb_any (int *) ;
 int ns_to_ktime (int) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (int *) ;
 int skb_tstamp_tx (int *,struct skb_shared_hwtstamps*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_read_reg (struct adapter*,int ) ;

void cxgb4_ptp_read_hwstamp(struct adapter *adapter, struct port_info *pi)
{
 struct skb_shared_hwtstamps *skb_ts = ((void*)0);
 u64 tx_ts;

 skb_ts = skb_hwtstamps(adapter->ptp_tx_skb);

 tx_ts = t4_read_reg(adapter,
       T5_PORT_REG(pi->port_id, MAC_PORT_TX_TS_VAL_LO));

 tx_ts |= (u64)t4_read_reg(adapter,
      T5_PORT_REG(pi->port_id,
           MAC_PORT_TX_TS_VAL_HI)) << 32;
 skb_ts->hwtstamp = ns_to_ktime(tx_ts);
 skb_tstamp_tx(adapter->ptp_tx_skb, skb_ts);
 dev_kfree_skb_any(adapter->ptp_tx_skb);
 spin_lock(&adapter->ptp_lock);
 adapter->ptp_tx_skb = ((void*)0);
 spin_unlock(&adapter->ptp_lock);
}
