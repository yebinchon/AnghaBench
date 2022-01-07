
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int irqmask; } ;
struct TYPE_4__ {int * napi; int tx_napi; scalar_t__ csa_complete; int pre_tbtt_tasklet; TYPE_1__ mmio; int state; } ;
struct mt7603_dev {TYPE_2__ mt76; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MT76_STATE_INITIALIZED ;
 int MT_HW_INT3_PRE_TBTT0 ;
 int MT_HW_INT3_TBTT0 ;
 int MT_HW_INT_STATUS (int) ;
 int MT_INT_MAC_IRQ3 ;
 int MT_INT_RX_DONE (int) ;
 int MT_INT_SOURCE_CSR ;
 int MT_INT_TX_DONE_ALL ;
 int mt7603_irq_disable (struct mt7603_dev*,int) ;
 int mt76_csa_finish (TYPE_2__*) ;
 int mt76_rr (struct mt7603_dev*,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int napi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

irqreturn_t mt7603_irq_handler(int irq, void *dev_instance)
{
 struct mt7603_dev *dev = dev_instance;
 u32 intr;

 intr = mt76_rr(dev, MT_INT_SOURCE_CSR);
 mt76_wr(dev, MT_INT_SOURCE_CSR, intr);

 if (!test_bit(MT76_STATE_INITIALIZED, &dev->mt76.state))
  return IRQ_NONE;

 intr &= dev->mt76.mmio.irqmask;

 if (intr & MT_INT_MAC_IRQ3) {
  u32 hwintr = mt76_rr(dev, MT_HW_INT_STATUS(3));

  mt76_wr(dev, MT_HW_INT_STATUS(3), hwintr);
  if (hwintr & MT_HW_INT3_PRE_TBTT0)
   tasklet_schedule(&dev->mt76.pre_tbtt_tasklet);

  if ((hwintr & MT_HW_INT3_TBTT0) && dev->mt76.csa_complete)
   mt76_csa_finish(&dev->mt76);
 }

 if (intr & MT_INT_TX_DONE_ALL) {
  mt7603_irq_disable(dev, MT_INT_TX_DONE_ALL);
  napi_schedule(&dev->mt76.tx_napi);
 }

 if (intr & MT_INT_RX_DONE(0)) {
  mt7603_irq_disable(dev, MT_INT_RX_DONE(0));
  napi_schedule(&dev->mt76.napi[0]);
 }

 if (intr & MT_INT_RX_DONE(1)) {
  mt7603_irq_disable(dev, MT_INT_RX_DONE(1));
  napi_schedule(&dev->mt76.napi[1]);
 }

 return IRQ_HANDLED;
}
