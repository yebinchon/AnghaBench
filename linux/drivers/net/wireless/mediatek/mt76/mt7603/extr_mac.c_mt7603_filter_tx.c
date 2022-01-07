
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int MT_DMA_FQCR0 ;
 int MT_DMA_FQCR0_BUSY ;
 int MT_DMA_FQCR0_DEST_PORT_ID ;
 int MT_DMA_FQCR0_DEST_QUEUE_ID ;
 int MT_DMA_FQCR0_TARGET_QID ;
 int MT_DMA_FQCR0_TARGET_WCID ;
 int MT_TX_ABORT ;
 int MT_TX_ABORT_EN ;
 int MT_TX_ABORT_WCID ;
 int WARN_ON_ONCE (int) ;
 int mt7603_wtbl_set_skip_tx (struct mt7603_dev*,int,int) ;
 int mt76_poll (struct mt7603_dev*,int ,int,int ,int) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;

void mt7603_filter_tx(struct mt7603_dev *dev, int idx, bool abort)
{
 int i, port, queue;

 if (abort) {
  port = 3;
  queue = 8;
 } else {
  port = 0;
  queue = 1;
 }

 mt7603_wtbl_set_skip_tx(dev, idx, 1);

 mt76_wr(dev, MT_TX_ABORT, MT_TX_ABORT_EN |
   FIELD_PREP(MT_TX_ABORT_WCID, idx));

 for (i = 0; i < 4; i++) {
  mt76_wr(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY |
   FIELD_PREP(MT_DMA_FQCR0_TARGET_WCID, idx) |
   FIELD_PREP(MT_DMA_FQCR0_TARGET_QID, i) |
   FIELD_PREP(MT_DMA_FQCR0_DEST_PORT_ID, port) |
   FIELD_PREP(MT_DMA_FQCR0_DEST_QUEUE_ID, queue));

  WARN_ON_ONCE(!mt76_poll(dev, MT_DMA_FQCR0, MT_DMA_FQCR0_BUSY,
     0, 5000));
 }

 mt76_wr(dev, MT_TX_ABORT, 0);

 mt7603_wtbl_set_skip_tx(dev, idx, 0);
}
