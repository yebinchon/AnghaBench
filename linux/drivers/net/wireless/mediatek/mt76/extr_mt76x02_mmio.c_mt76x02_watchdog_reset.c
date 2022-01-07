
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int irqmask; } ;
struct TYPE_6__ {int hw; int * napi; int pre_tbtt_tasklet; int tx_napi; int tx_tasklet; int state; int mutex; scalar_t__ beacon_mask; int * q_rx; int * q_tx; TYPE_2__* mcu_ops; TYPE_1__ mmio; } ;
struct mt76x02_dev {TYPE_3__ mt76; scalar_t__ ed_monitor; } ;
struct TYPE_5__ {int mcu_restart; } ;


 int ARRAY_SIZE (int *) ;
 int MT76_RESET ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_BEACON_TX ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_INT_SOURCE_CSR ;
 int MT_MAC_SYS_CTRL ;
 int MT_TXOP_CTRL_CFG ;
 int MT_TXOP_ED_CCA_EN ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int Q_SELECT ;
 int clear_bit (int ,int *) ;
 int ieee80211_restart_hw (int ) ;
 int ieee80211_stop_queues (int ) ;
 int ieee80211_wake_queues (int ) ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_mcu_restart (struct mt76x02_dev*) ;
 int mt76_queue_rx_reset (struct mt76x02_dev*,int) ;
 int mt76_queue_tx_cleanup (struct mt76x02_dev*,int,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76_txq_schedule_all (TYPE_3__*) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_irq_disable (struct mt76x02_dev*,int ) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int ) ;
 int mt76x02_mac_start (struct mt76x02_dev*) ;
 int mt76x02_mcu_function_select (struct mt76x02_dev*,int ,int) ;
 int mt76x02_reset_state (struct mt76x02_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 int set_bit (int ,int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt76x02_watchdog_reset(struct mt76x02_dev *dev)
{
 u32 mask = dev->mt76.mmio.irqmask;
 bool restart = dev->mt76.mcu_ops->mcu_restart;
 int i;

 ieee80211_stop_queues(dev->mt76.hw);
 set_bit(MT76_RESET, &dev->mt76.state);

 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 tasklet_disable(&dev->mt76.tx_tasklet);
 napi_disable(&dev->mt76.tx_napi);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.napi); i++)
  napi_disable(&dev->mt76.napi[i]);

 mutex_lock(&dev->mt76.mutex);

 if (restart)
  mt76x02_reset_state(dev);

 if (dev->mt76.beacon_mask)
  mt76_clear(dev, MT_BEACON_TIME_CFG,
      MT_BEACON_TIME_CFG_BEACON_TX |
      MT_BEACON_TIME_CFG_TBTT_EN);

 mt76x02_irq_disable(dev, mask);


 mt76_clear(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
 mt76_wr(dev, MT_MAC_SYS_CTRL, 0);
 mt76_clear(dev, MT_WPDMA_GLO_CFG,
     MT_WPDMA_GLO_CFG_TX_DMA_EN | MT_WPDMA_GLO_CFG_RX_DMA_EN);
 usleep_range(5000, 10000);
 mt76_wr(dev, MT_INT_SOURCE_CSR, 0xffffffff);


 mt76_set(dev, 0x734, 0x3);

 if (restart)
  mt76_mcu_restart(dev);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.q_tx); i++)
  mt76_queue_tx_cleanup(dev, i, 1);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.q_rx); i++)
  mt76_queue_rx_reset(dev, i);

 mt76x02_mac_start(dev);

 if (dev->ed_monitor)
  mt76_set(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);

 if (dev->mt76.beacon_mask && !restart)
  mt76_set(dev, MT_BEACON_TIME_CFG,
    MT_BEACON_TIME_CFG_BEACON_TX |
    MT_BEACON_TIME_CFG_TBTT_EN);

 mt76x02_irq_enable(dev, mask);

 mutex_unlock(&dev->mt76.mutex);

 clear_bit(MT76_RESET, &dev->mt76.state);

 tasklet_enable(&dev->mt76.tx_tasklet);
 napi_enable(&dev->mt76.tx_napi);
 napi_schedule(&dev->mt76.tx_napi);

 tasklet_enable(&dev->mt76.pre_tbtt_tasklet);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.napi); i++) {
  napi_enable(&dev->mt76.napi[i]);
  napi_schedule(&dev->mt76.napi[i]);
 }

 if (restart) {
  mt76x02_mcu_function_select(dev, Q_SELECT, 1);
  ieee80211_restart_hw(dev->mt76.hw);
 } else {
  ieee80211_wake_queues(dev->mt76.hw);
  mt76_txq_schedule_all(&dev->mt76);
 }
}
