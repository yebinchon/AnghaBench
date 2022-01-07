
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int dev; } ;
struct TYPE_4__ {int OutPktsUntagged; } ;
struct pcpu_secy_stats {int syncp; TYPE_1__ stats; } ;
struct TYPE_5__ {int tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct macsec_secy {int tx_sc; int operational; int protect_frames; } ;
struct macsec_dev {struct macsec_secy secy; int real_dev; int stats; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {int tx_sa; } ;


 int EINPROGRESS ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NETDEV_TX_OK ;
 int PTR_ERR (struct sk_buff*) ;
 int count_tx (struct net_device*,int,int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int macsec_count_tx (struct sk_buff*,int *,int ) ;
 struct sk_buff* macsec_encrypt (struct sk_buff*,struct net_device*) ;
 int macsec_encrypt_finish (struct sk_buff*,struct net_device*) ;
 TYPE_3__* macsec_skb_cb (struct sk_buff*) ;
 struct macsec_dev* netdev_priv (struct net_device*) ;
 struct pcpu_secy_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t macsec_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct macsec_dev *macsec = netdev_priv(dev);
 struct macsec_secy *secy = &macsec->secy;
 struct pcpu_secy_stats *secy_stats;
 int ret, len;


 if (!secy->protect_frames) {
  secy_stats = this_cpu_ptr(macsec->stats);
  u64_stats_update_begin(&secy_stats->syncp);
  secy_stats->stats.OutPktsUntagged++;
  u64_stats_update_end(&secy_stats->syncp);
  skb->dev = macsec->real_dev;
  len = skb->len;
  ret = dev_queue_xmit(skb);
  count_tx(dev, ret, len);
  return ret;
 }

 if (!secy->operational) {
  kfree_skb(skb);
  dev->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }

 skb = macsec_encrypt(skb, dev);
 if (IS_ERR(skb)) {
  if (PTR_ERR(skb) != -EINPROGRESS)
   dev->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }

 macsec_count_tx(skb, &macsec->secy.tx_sc, macsec_skb_cb(skb)->tx_sa);

 macsec_encrypt_finish(skb, dev);
 len = skb->len;
 ret = dev_queue_xmit(skb);
 count_tx(dev, ret, len);
 return ret;
}
