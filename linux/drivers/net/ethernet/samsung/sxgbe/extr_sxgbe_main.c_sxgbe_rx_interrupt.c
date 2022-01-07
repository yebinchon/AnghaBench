
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sxgbe_rx_queue {int queue_no; struct sxgbe_priv_data* priv_ptr; } ;
struct TYPE_8__ {int rx_threshold; } ;
struct sxgbe_priv_data {int rx_tc; TYPE_4__ xstats; int ioaddr; TYPE_3__* hw; int napi; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {TYPE_2__* mtl; TYPE_1__* dma; } ;
struct TYPE_6__ {int (* set_rx_mtl_mode ) (int ,int ,int) ;} ;
struct TYPE_5__ {int (* rx_dma_int_status ) (int ,int ,TYPE_4__*) ;int (* disable_dma_irq ) (int ,int ) ;} ;


 int IRQ_HANDLED ;
 int SXGBE_MTL_SFMODE ;
 int __napi_schedule (int *) ;
 int handle_rx ;
 scalar_t__ likely (int) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int rx_bump_tc ;
 int stub1 (int ,int ,TYPE_4__*) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sxgbe_rx_interrupt(int irq, void *dev_id)
{
 int status;
 struct sxgbe_rx_queue *rxq = (struct sxgbe_rx_queue *)dev_id;
 struct sxgbe_priv_data *priv = rxq->priv_ptr;


 status = priv->hw->dma->rx_dma_int_status(priv->ioaddr, rxq->queue_no,
        &priv->xstats);

 if (likely((status & handle_rx) && (napi_schedule_prep(&priv->napi)))) {
  priv->hw->dma->disable_dma_irq(priv->ioaddr, rxq->queue_no);
  __napi_schedule(&priv->napi);
 }


 if (unlikely((status & rx_bump_tc) &&
       (priv->rx_tc != SXGBE_MTL_SFMODE) &&
       (priv->rx_tc < 128))) {

  priv->rx_tc += 32;
  priv->hw->mtl->set_rx_mtl_mode(priv->ioaddr,
            rxq->queue_no, priv->rx_tc);
  priv->xstats.rx_threshold = priv->rx_tc;
 }

 return IRQ_HANDLED;
}
