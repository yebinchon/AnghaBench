
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int tx_tasklet; int state; } ;
struct ieee80211_txq {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;


 int MT76_STATE_RUNNING ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

void mt76_wake_tx_queue(struct ieee80211_hw *hw, struct ieee80211_txq *txq)
{
 struct mt76_dev *dev = hw->priv;

 if (!test_bit(MT76_STATE_RUNNING, &dev->state))
  return;

 tasklet_schedule(&dev->tx_tasklet);
}
