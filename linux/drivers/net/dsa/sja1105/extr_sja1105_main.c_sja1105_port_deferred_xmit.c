
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; int member_0; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int (* read ) (TYPE_1__*) ;} ;
struct sja1105_private {int mgmt_lock; int ptp_lock; int tstamp_tc; TYPE_1__ tstamp_cc; struct sja1105_port* ports; } ;
struct sja1105_port {int mgmt_slot; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {struct sk_buff* clone; } ;
struct TYPE_5__ {int tx_flags; } ;


 TYPE_3__* DSA_SKB_CB (struct sk_buff*) ;
 int NETDEV_TX_OK ;
 int SKBTX_IN_PROGRESS ;
 int dev_err (int ,char*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ns_to_ktime (int ) ;
 int sja1105_mgmt_xmit (struct dsa_switch*,int,int,struct sk_buff*,int) ;
 int sja1105_ptpegr_ts_poll (struct sja1105_private*,int,int *) ;
 int sja1105_tstamp_reconstruct (struct sja1105_private*,int ,int ) ;
 int skb_complete_tx_timestamp (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int stub1 (TYPE_1__*) ;
 int timecounter_cyc2time (int *,int ) ;

__attribute__((used)) static netdev_tx_t sja1105_port_deferred_xmit(struct dsa_switch *ds, int port,
           struct sk_buff *skb)
{
 struct sja1105_private *priv = ds->priv;
 struct sja1105_port *sp = &priv->ports[port];
 struct skb_shared_hwtstamps shwt = {0};
 int slot = sp->mgmt_slot;
 struct sk_buff *clone;
 u64 now, ts;
 int rc;
 mutex_lock(&priv->mgmt_lock);


 clone = DSA_SKB_CB(skb)->clone;

 sja1105_mgmt_xmit(ds, port, slot, skb, !!clone);

 if (!clone)
  goto out;

 skb_shinfo(clone)->tx_flags |= SKBTX_IN_PROGRESS;

 mutex_lock(&priv->ptp_lock);

 now = priv->tstamp_cc.read(&priv->tstamp_cc);

 rc = sja1105_ptpegr_ts_poll(priv, slot, &ts);
 if (rc < 0) {
  dev_err(ds->dev, "xmit: timed out polling for tstamp\n");
  kfree_skb(clone);
  goto out_unlock_ptp;
 }

 ts = sja1105_tstamp_reconstruct(priv, now, ts);
 ts = timecounter_cyc2time(&priv->tstamp_tc, ts);

 shwt.hwtstamp = ns_to_ktime(ts);
 skb_complete_tx_timestamp(clone, &shwt);

out_unlock_ptp:
 mutex_unlock(&priv->ptp_lock);
out:
 mutex_unlock(&priv->mgmt_lock);
 return NETDEV_TX_OK;
}
