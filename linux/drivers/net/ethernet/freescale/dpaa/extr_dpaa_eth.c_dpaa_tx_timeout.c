
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dpaa_priv {int percpu_priv; } ;
struct TYPE_2__ {int tx_errors; } ;
struct dpaa_percpu_priv {TYPE_1__ stats; } ;


 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int netif_crit (struct dpaa_priv const*,int ,struct net_device*,char*,int ) ;
 struct dpaa_percpu_priv* this_cpu_ptr (int ) ;
 int timer ;

__attribute__((used)) static void dpaa_tx_timeout(struct net_device *net_dev)
{
 struct dpaa_percpu_priv *percpu_priv;
 const struct dpaa_priv *priv;

 priv = netdev_priv(net_dev);
 percpu_priv = this_cpu_ptr(priv->percpu_priv);

 netif_crit(priv, timer, net_dev, "Transmit timeout latency: %u ms\n",
     jiffies_to_msecs(jiffies - dev_trans_start(net_dev)));

 percpu_priv->stats.tx_errors++;
}
