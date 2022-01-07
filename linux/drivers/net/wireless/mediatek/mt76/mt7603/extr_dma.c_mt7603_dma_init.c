
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tx_napi; int napi_dev; int * q_rx; int * q_tx; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;


 int ARRAY_SIZE (int const*) ;




 int MT7603_RX_RING_SIZE ;
 int MT_DELAY_INT_CFG ;
 int MT_MCU_RING_SIZE ;
 size_t MT_RXQ_MAIN ;
 size_t MT_RXQ_MCU ;
 int MT_RX_BUF_SIZE ;
 size_t MT_TXQ_BEACON ;
 size_t MT_TXQ_CAB ;
 size_t MT_TXQ_MCU ;
 size_t MT_TXQ_PSD ;
 int const MT_TX_HW_QUEUE_BCN ;
 int const MT_TX_HW_QUEUE_BMC ;
 int const MT_TX_HW_QUEUE_MCU ;
 int const MT_TX_HW_QUEUE_MGMT ;
 int MT_TX_RING_SIZE ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int MT_WPDMA_RST_IDX ;
 int NAPI_POLL_WEIGHT ;
 int mt7603_init_rx_queue (struct mt7603_dev*,int *,int,int ,int ) ;
 int mt7603_init_tx_queue (struct mt7603_dev*,int *,int const,int ) ;
 int mt7603_poll_tx ;
 int mt7603_pse_client_reset (struct mt7603_dev*) ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_dma_attach (TYPE_1__*) ;
 int mt76_init_queues (struct mt7603_dev*) ;
 int mt76_wr (struct mt7603_dev*,int ,int ) ;
 int napi_enable (int *) ;
 int netif_tx_napi_add (int *,int *,int ,int ) ;

int mt7603_dma_init(struct mt7603_dev *dev)
{
 static const u8 wmm_queue_map[] = {
  [130] = 0,
  [131] = 1,
  [129] = 2,
  [128] = 3,
 };
 int ret;
 int i;

 mt76_dma_attach(&dev->mt76);

 mt76_clear(dev, MT_WPDMA_GLO_CFG,
     MT_WPDMA_GLO_CFG_TX_DMA_EN |
     MT_WPDMA_GLO_CFG_RX_DMA_EN |
     MT_WPDMA_GLO_CFG_DMA_BURST_SIZE |
     MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);

 mt76_wr(dev, MT_WPDMA_RST_IDX, ~0);
 mt7603_pse_client_reset(dev);

 for (i = 0; i < ARRAY_SIZE(wmm_queue_map); i++) {
  ret = mt7603_init_tx_queue(dev, &dev->mt76.q_tx[i],
        wmm_queue_map[i],
        MT_TX_RING_SIZE);
  if (ret)
   return ret;
 }

 ret = mt7603_init_tx_queue(dev, &dev->mt76.q_tx[MT_TXQ_PSD],
       MT_TX_HW_QUEUE_MGMT, MT_TX_RING_SIZE);
 if (ret)
  return ret;

 ret = mt7603_init_tx_queue(dev, &dev->mt76.q_tx[MT_TXQ_MCU],
       MT_TX_HW_QUEUE_MCU, MT_MCU_RING_SIZE);
 if (ret)
  return ret;

 ret = mt7603_init_tx_queue(dev, &dev->mt76.q_tx[MT_TXQ_BEACON],
       MT_TX_HW_QUEUE_BCN, MT_MCU_RING_SIZE);
 if (ret)
  return ret;

 ret = mt7603_init_tx_queue(dev, &dev->mt76.q_tx[MT_TXQ_CAB],
       MT_TX_HW_QUEUE_BMC, MT_MCU_RING_SIZE);
 if (ret)
  return ret;

 ret = mt7603_init_rx_queue(dev, &dev->mt76.q_rx[MT_RXQ_MCU], 1,
       MT_MCU_RING_SIZE, MT_RX_BUF_SIZE);
 if (ret)
  return ret;

 ret = mt7603_init_rx_queue(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
       MT7603_RX_RING_SIZE, MT_RX_BUF_SIZE);
 if (ret)
  return ret;

 mt76_wr(dev, MT_DELAY_INT_CFG, 0);
 ret = mt76_init_queues(dev);
 if (ret)
  return ret;

 netif_tx_napi_add(&dev->mt76.napi_dev, &dev->mt76.tx_napi,
     mt7603_poll_tx, NAPI_POLL_WEIGHT);
 napi_enable(&dev->mt76.tx_napi);

 return 0;
}
