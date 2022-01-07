
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int passive_no_rx; int hw; int transport_queue_stop; } ;


 int IWLAGN_FIRST_AMPDU_QUEUE ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_priv*,char*,int) ;
 int ieee80211_wake_queue (int ,int) ;
 int test_bit (int,int *) ;

void iwlagn_lift_passive_no_rx(struct iwl_priv *priv)
{
 int mq;

 if (!priv->passive_no_rx)
  return;

 for (mq = 0; mq < IWLAGN_FIRST_AMPDU_QUEUE; mq++) {
  if (!test_bit(mq, &priv->transport_queue_stop)) {
   IWL_DEBUG_TX_QUEUES(priv, "Wake queue %d\n", mq);
   ieee80211_wake_queue(priv->hw, mq);
  } else {
   IWL_DEBUG_TX_QUEUES(priv, "Don't wake queue %d\n", mq);
  }
 }

 priv->passive_no_rx = 0;
}
