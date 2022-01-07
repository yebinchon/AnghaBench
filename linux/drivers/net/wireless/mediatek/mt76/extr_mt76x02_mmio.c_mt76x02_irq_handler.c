
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int dfs_tasklet; } ;
struct TYPE_5__ {int irqmask; } ;
struct TYPE_8__ {int tx_napi; TYPE_2__* q_tx; scalar_t__ csa_complete; int pre_tbtt_tasklet; int * napi; TYPE_1__ mmio; int state; } ;
struct mt76x02_dev {TYPE_3__ dfs_pd; TYPE_4__ mt76; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int q; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MT76_STATE_INITIALIZED ;
 int MT_INT_GPTIMER ;
 int MT_INT_PRE_TBTT ;
 int MT_INT_RX_DONE (int) ;
 int MT_INT_SOURCE_CSR ;
 int MT_INT_TBTT ;
 int MT_INT_TX_DONE_ALL ;
 int MT_INT_TX_STAT ;
 size_t MT_TXQ_PSD ;
 int mt76_csa_finish (TYPE_4__*) ;
 int mt76_queue_kick (struct mt76x02_dev*,int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_irq_disable (struct mt76x02_dev*,int) ;
 int mt76x02_mac_poll_tx_status (struct mt76x02_dev*,int) ;
 int napi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;
 int trace_dev_irq (struct mt76x02_dev*,int,int) ;

irqreturn_t mt76x02_irq_handler(int irq, void *dev_instance)
{
 struct mt76x02_dev *dev = dev_instance;
 u32 intr;

 intr = mt76_rr(dev, MT_INT_SOURCE_CSR);
 mt76_wr(dev, MT_INT_SOURCE_CSR, intr);

 if (!test_bit(MT76_STATE_INITIALIZED, &dev->mt76.state))
  return IRQ_NONE;

 trace_dev_irq(dev, intr, dev->mt76.mmio.irqmask);

 intr &= dev->mt76.mmio.irqmask;

 if (intr & MT_INT_RX_DONE(0)) {
  mt76x02_irq_disable(dev, MT_INT_RX_DONE(0));
  napi_schedule(&dev->mt76.napi[0]);
 }

 if (intr & MT_INT_RX_DONE(1)) {
  mt76x02_irq_disable(dev, MT_INT_RX_DONE(1));
  napi_schedule(&dev->mt76.napi[1]);
 }

 if (intr & MT_INT_PRE_TBTT)
  tasklet_schedule(&dev->mt76.pre_tbtt_tasklet);


 if (intr & MT_INT_TBTT) {
  if (dev->mt76.csa_complete)
   mt76_csa_finish(&dev->mt76);
  else
   mt76_queue_kick(dev, dev->mt76.q_tx[MT_TXQ_PSD].q);
 }

 if (intr & MT_INT_TX_STAT)
  mt76x02_mac_poll_tx_status(dev, 1);

 if (intr & (MT_INT_TX_STAT | MT_INT_TX_DONE_ALL)) {
  mt76x02_irq_disable(dev, MT_INT_TX_DONE_ALL);
  napi_schedule(&dev->mt76.tx_napi);
 }

 if (intr & MT_INT_GPTIMER) {
  mt76x02_irq_disable(dev, MT_INT_GPTIMER);
  tasklet_schedule(&dev->dfs_pd.dfs_tasklet);
 }

 return IRQ_HANDLED;
}
