
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct qm_fd {int status; } ;
struct net_device {int dummy; } ;
struct dpaa_priv {int dummy; } ;
struct TYPE_2__ {int tx_errors; } ;
struct dpaa_percpu_priv {int tx_confirm; TYPE_1__ stats; } ;


 int FM_FD_STAT_TX_ERRORS ;
 int be32_to_cpu (int ) ;
 int consume_skb (struct sk_buff*) ;
 struct sk_buff* dpaa_cleanup_tx_fd (struct dpaa_priv const*,struct qm_fd const*) ;
 int hw ;
 scalar_t__ net_ratelimit () ;
 int netif_warn (struct dpaa_priv const*,int ,struct net_device*,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dpaa_tx_conf(struct net_device *net_dev,
    const struct dpaa_priv *priv,
    struct dpaa_percpu_priv *percpu_priv,
    const struct qm_fd *fd,
    u32 fqid)
{
 struct sk_buff *skb;

 if (unlikely(be32_to_cpu(fd->status) & FM_FD_STAT_TX_ERRORS)) {
  if (net_ratelimit())
   netif_warn(priv, hw, net_dev, "FD status = 0x%08x\n",
       be32_to_cpu(fd->status) &
       FM_FD_STAT_TX_ERRORS);

  percpu_priv->stats.tx_errors++;
 }

 percpu_priv->tx_confirm++;

 skb = dpaa_cleanup_tx_fd(priv, fd);

 consume_skb(skb);
}
