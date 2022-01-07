
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54_common {int conf_mutex; scalar_t__ tsf_low32; scalar_t__ tsf_high32; int beacon_req_id; TYPE_1__* tx_stats; int tx_queue; int tx_pending; int (* stop ) (struct ieee80211_hw*) ;int work; scalar_t__ softled_state; int mode; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ count; } ;


 int NL80211_IFTYPE_UNSPECIFIED ;
 int P54_QUEUE_NUM ;
 int cancel_delayed_work_sync (int *) ;
 int cpu_to_le32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_set_leds (struct p54_common*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct ieee80211_hw*) ;

__attribute__((used)) static void p54_stop(struct ieee80211_hw *dev)
{
 struct p54_common *priv = dev->priv;
 int i;

 priv->mode = NL80211_IFTYPE_UNSPECIFIED;
 priv->softled_state = 0;
 cancel_delayed_work_sync(&priv->work);
 mutex_lock(&priv->conf_mutex);
 p54_set_leds(priv);
 priv->stop(dev);
 skb_queue_purge(&priv->tx_pending);
 skb_queue_purge(&priv->tx_queue);
 for (i = 0; i < P54_QUEUE_NUM; i++) {
  priv->tx_stats[i].count = 0;
  priv->tx_stats[i].len = 0;
 }

 priv->beacon_req_id = cpu_to_le32(0);
 priv->tsf_high32 = priv->tsf_low32 = 0;
 mutex_unlock(&priv->conf_mutex);
}
