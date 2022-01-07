
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int irqmask; } ;
struct TYPE_4__ {int beacon_int; int hw; int * napi; int pre_tbtt_tasklet; int tx_napi; int tx_tasklet; int mutex; int state; int q_rx; int q_tx; TYPE_1__ mmio; } ;
struct mt7603_dev {scalar_t__ cur_reset_cause; TYPE_2__ mt76; scalar_t__* reset_cause; } ;


 int ARRAY_SIZE (int ) ;
 int MT76_RESET ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_FORCE_TX_EOF ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 scalar_t__ RESET_CAUSE_BEACON_STUCK ;
 size_t RESET_CAUSE_RESET_FAILED ;
 scalar_t__ RESET_CAUSE_RX_PSE_BUSY ;
 scalar_t__ RESET_CAUSE_TX_HANG ;
 int clear_bit (int ,int *) ;
 int ieee80211_stop_queues (int ) ;
 int ieee80211_wake_queues (int ) ;
 int mt7603_beacon_set_timer (struct mt7603_dev*,int,int) ;
 int mt7603_dma_sched_reset (struct mt7603_dev*) ;
 int mt7603_irq_disable (struct mt7603_dev*,int ) ;
 int mt7603_irq_enable (struct mt7603_dev*,int ) ;
 int mt7603_mac_dma_start (struct mt7603_dev*) ;
 int mt7603_mac_stop (struct mt7603_dev*) ;
 int mt7603_pse_client_reset (struct mt7603_dev*) ;
 int mt7603_pse_reset (struct mt7603_dev*) ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_queue_rx_reset (struct mt7603_dev*,int) ;
 int mt76_queue_tx_cleanup (struct mt7603_dev*,int,int) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;
 int mt76_txq_schedule_all (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 int set_bit (int ,int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt7603_mac_watchdog_reset(struct mt7603_dev *dev)
{
 int beacon_int = dev->mt76.beacon_int;
 u32 mask = dev->mt76.mmio.irqmask;
 int i;

 ieee80211_stop_queues(dev->mt76.hw);
 set_bit(MT76_RESET, &dev->mt76.state);


 mt76_txq_schedule_all(&dev->mt76);

 tasklet_disable(&dev->mt76.tx_tasklet);
 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 napi_disable(&dev->mt76.napi[0]);
 napi_disable(&dev->mt76.napi[1]);
 napi_disable(&dev->mt76.tx_napi);

 mutex_lock(&dev->mt76.mutex);

 mt7603_beacon_set_timer(dev, -1, 0);

 if (dev->reset_cause[RESET_CAUSE_RESET_FAILED] ||
     dev->cur_reset_cause == RESET_CAUSE_RX_PSE_BUSY ||
     dev->cur_reset_cause == RESET_CAUSE_BEACON_STUCK ||
     dev->cur_reset_cause == RESET_CAUSE_TX_HANG)
  mt7603_pse_reset(dev);

 if (dev->reset_cause[RESET_CAUSE_RESET_FAILED])
  goto skip_dma_reset;

 mt7603_mac_stop(dev);

 mt76_clear(dev, MT_WPDMA_GLO_CFG,
     MT_WPDMA_GLO_CFG_RX_DMA_EN | MT_WPDMA_GLO_CFG_TX_DMA_EN |
     MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);
 usleep_range(1000, 2000);

 mt7603_irq_disable(dev, mask);

 mt76_set(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_FORCE_TX_EOF);

 mt7603_pse_client_reset(dev);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.q_tx); i++)
  mt76_queue_tx_cleanup(dev, i, 1);

 for (i = 0; i < ARRAY_SIZE(dev->mt76.q_rx); i++)
  mt76_queue_rx_reset(dev, i);

 mt7603_dma_sched_reset(dev);

 mt7603_mac_dma_start(dev);

 mt7603_irq_enable(dev, mask);

skip_dma_reset:
 clear_bit(MT76_RESET, &dev->mt76.state);
 mutex_unlock(&dev->mt76.mutex);

 tasklet_enable(&dev->mt76.tx_tasklet);
 napi_enable(&dev->mt76.tx_napi);
 napi_schedule(&dev->mt76.tx_napi);

 tasklet_enable(&dev->mt76.pre_tbtt_tasklet);
 mt7603_beacon_set_timer(dev, -1, beacon_int);

 napi_enable(&dev->mt76.napi[0]);
 napi_schedule(&dev->mt76.napi[0]);

 napi_enable(&dev->mt76.napi[1]);
 napi_schedule(&dev->mt76.napi[1]);

 ieee80211_wake_queues(dev->mt76.hw);
 mt76_txq_schedule_all(&dev->mt76);
}
