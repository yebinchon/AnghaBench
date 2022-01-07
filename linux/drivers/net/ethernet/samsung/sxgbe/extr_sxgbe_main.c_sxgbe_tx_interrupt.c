
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sxgbe_tx_queue {int queue_no; struct sxgbe_priv_data* priv_ptr; } ;
struct TYPE_8__ {int tx_threshold; } ;
struct sxgbe_priv_data {int tx_tc; TYPE_4__ xstats; int ioaddr; TYPE_3__* hw; int napi; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {TYPE_2__* mtl; TYPE_1__* dma; } ;
struct TYPE_6__ {int (* set_tx_mtl_mode ) (int ,int ,int) ;} ;
struct TYPE_5__ {int (* tx_dma_int_status ) (int ,int ,TYPE_4__*) ;} ;


 int IRQ_HANDLED ;
 int SXGBE_MTL_SFMODE ;
 int handle_tx ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 int stub1 (int ,int ,TYPE_4__*) ;
 int stub2 (int ,int ,int) ;
 int sxgbe_restart_tx_queue (struct sxgbe_priv_data*,int ) ;
 int tx_bump_tc ;
 int tx_hard_error ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sxgbe_tx_interrupt(int irq, void *dev_id)
{
 int status;
 struct sxgbe_tx_queue *txq = (struct sxgbe_tx_queue *)dev_id;
 struct sxgbe_priv_data *priv = txq->priv_ptr;


 status = priv->hw->dma->tx_dma_int_status(priv->ioaddr, txq->queue_no,
        &priv->xstats);

 if (likely((status & handle_tx)))
  napi_schedule(&priv->napi);


 if (unlikely((status & tx_hard_error)))
  sxgbe_restart_tx_queue(priv, txq->queue_no);


 if (unlikely((status & tx_bump_tc) &&
       (priv->tx_tc != SXGBE_MTL_SFMODE) &&
       (priv->tx_tc < 512))) {

  priv->tx_tc += (priv->tx_tc < 128) ? 32 : 64;
  priv->hw->mtl->set_tx_mtl_mode(priv->ioaddr,
            txq->queue_no, priv->tx_tc);
  priv->xstats.tx_threshold = priv->tx_tc;
 }

 return IRQ_HANDLED;
}
