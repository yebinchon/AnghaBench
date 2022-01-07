
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct alx_tx_queue {int queue_idx; int * dev; int netdev; int count; int c_reg; int p_reg; } ;
struct alx_rx_queue {int * dev; int netdev; int count; scalar_t__ queue_idx; struct alx_napi* np; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct alx_priv {int num_napi; int num_txq; int dev; int int_mask; TYPE_2__ hw; int rx_ringsz; struct alx_napi** qnapi; int tx_ringsz; } ;
struct alx_napi {int vec_mask; struct alx_rx_queue* rxq; struct alx_tx_queue* txq; int napi; struct alx_priv* alx; } ;
struct TYPE_3__ {int dev; } ;


 int ALX_ISR_ALL_QUEUES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alx_free_napis (struct alx_priv*) ;
 int alx_poll ;
 void* kzalloc (int,int ) ;
 int netdev_err (int ,char*) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int * rx_vect_mask ;
 int * tx_cidx_reg ;
 int * tx_pidx_reg ;
 int * tx_vect_mask ;

__attribute__((used)) static int alx_alloc_napis(struct alx_priv *alx)
{
 struct alx_napi *np;
 struct alx_rx_queue *rxq;
 struct alx_tx_queue *txq;
 int i;

 alx->int_mask &= ~ALX_ISR_ALL_QUEUES;


 for (i = 0; i < alx->num_napi; i++) {
  np = kzalloc(sizeof(struct alx_napi), GFP_KERNEL);
  if (!np)
   goto err_out;

  np->alx = alx;
  netif_napi_add(alx->dev, &np->napi, alx_poll, 64);
  alx->qnapi[i] = np;
 }


 for (i = 0; i < alx->num_txq; i++) {
  np = alx->qnapi[i];
  txq = kzalloc(sizeof(*txq), GFP_KERNEL);
  if (!txq)
   goto err_out;

  np->txq = txq;
  txq->p_reg = tx_pidx_reg[i];
  txq->c_reg = tx_cidx_reg[i];
  txq->queue_idx = i;
  txq->count = alx->tx_ringsz;
  txq->netdev = alx->dev;
  txq->dev = &alx->hw.pdev->dev;
  np->vec_mask |= tx_vect_mask[i];
  alx->int_mask |= tx_vect_mask[i];
 }


 np = alx->qnapi[0];
 rxq = kzalloc(sizeof(*rxq), GFP_KERNEL);
 if (!rxq)
  goto err_out;

 np->rxq = rxq;
 rxq->np = alx->qnapi[0];
 rxq->queue_idx = 0;
 rxq->count = alx->rx_ringsz;
 rxq->netdev = alx->dev;
 rxq->dev = &alx->hw.pdev->dev;
 np->vec_mask |= rx_vect_mask[0];
 alx->int_mask |= rx_vect_mask[0];

 return 0;

err_out:
 netdev_err(alx->dev, "error allocating internal structures\n");
 alx_free_napis(alx);
 return -ENOMEM;
}
