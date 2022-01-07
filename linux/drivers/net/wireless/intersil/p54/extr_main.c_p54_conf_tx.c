
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct p54_common {int conf_mutex; int * qos_params; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int P54_SET_QUEUE (int ,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_set_edcf (struct p54_common*) ;

__attribute__((used)) static int p54_conf_tx(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif, u16 queue,
         const struct ieee80211_tx_queue_params *params)
{
 struct p54_common *priv = dev->priv;
 int ret;

 mutex_lock(&priv->conf_mutex);
 P54_SET_QUEUE(priv->qos_params[queue], params->aifs,
        params->cw_min, params->cw_max, params->txop);
 ret = p54_set_edcf(priv);
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
