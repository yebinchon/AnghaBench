
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_driver_ops {int dummy; } ;
struct mt76_dev {int tx_tasklet; int status_list; int tx_wait; int mutex; int cc_lock; int lock; int rx_lock; struct mt76_driver_ops const* drv; struct device* dev; struct ieee80211_hw* hw; } ;
struct ieee80211_ops {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;
struct device {int dummy; } ;


 struct ieee80211_hw* ieee80211_alloc_hw (unsigned int,struct ieee80211_ops const*) ;
 int init_waitqueue_head (int *) ;
 int mt76_tx_tasklet ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

struct mt76_dev *
mt76_alloc_device(struct device *pdev, unsigned int size,
    const struct ieee80211_ops *ops,
    const struct mt76_driver_ops *drv_ops)
{
 struct ieee80211_hw *hw;
 struct mt76_dev *dev;

 hw = ieee80211_alloc_hw(size, ops);
 if (!hw)
  return ((void*)0);

 dev = hw->priv;
 dev->hw = hw;
 dev->dev = pdev;
 dev->drv = drv_ops;

 spin_lock_init(&dev->rx_lock);
 spin_lock_init(&dev->lock);
 spin_lock_init(&dev->cc_lock);
 mutex_init(&dev->mutex);
 init_waitqueue_head(&dev->tx_wait);
 skb_queue_head_init(&dev->status_list);

 tasklet_init(&dev->tx_tasklet, mt76_tx_tasklet, (unsigned long)dev);

 return dev;
}
