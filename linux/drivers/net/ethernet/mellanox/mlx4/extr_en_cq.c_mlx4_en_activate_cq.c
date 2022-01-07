
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ rx_filter; scalar_t__ tx_type; } ;
struct mlx4_en_priv {size_t port; int rx_ring_num; TYPE_2__ hwtstamp_config; TYPE_1__** rx_ring; struct mlx4_en_cq** rx_cq; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_6__* dev; int priv_uar; int * pndev; } ;
struct TYPE_12__ {int comp; int event; int usage; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct TYPE_15__ {int dma; scalar_t__* db; } ;
struct TYPE_16__ {int buf; TYPE_3__ db; int mtt; } ;
struct mlx4_en_cq {int type; size_t ring; int xdp_busy; int vector; int napi; int dev; TYPE_10__ mcq; TYPE_4__ wqres; int size; int irq_desc; int buf_size; int buf; } ;
struct TYPE_17__ {int num_comp_vectors; } ;
struct TYPE_18__ {TYPE_5__ caps; } ;
struct TYPE_13__ {int actual_size; int affinity_mask; } ;


 int MLX4_RES_USAGE_DRIVER ;
 int NAPI_POLL_WEIGHT ;



 int cpumask_first (int ) ;
 int irq_to_desc (int ) ;
 int memset (int ,int ,int ) ;
 int mlx4_assign_eq (TYPE_6__*,size_t,int *) ;
 int mlx4_cq_alloc (TYPE_6__*,int ,int *,int *,int ,TYPE_10__*,int ,int ,int,int *,int) ;
 int mlx4_en_cq_event ;
 int mlx4_en_poll_rx_cq ;
 int mlx4_en_poll_tx_cq ;
 int mlx4_en_rx_irq ;
 int mlx4_en_tx_irq ;
 int mlx4_eq_get_irq (TYPE_6__*,int ) ;
 int mlx4_err (struct mlx4_en_dev*,char*,int ) ;
 int mlx4_is_eq_vector_valid (TYPE_6__*,size_t,int ) ;
 int mlx4_release_eq (TYPE_6__*,int ) ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int netif_tx_napi_add (int ,int *,int ,int ) ;

int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
   int cq_idx)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;
 int timestamp_en = 0;
 bool assigned_eq = 0;

 cq->dev = mdev->pndev[priv->port];
 cq->mcq.set_ci_db = cq->wqres.db.db;
 cq->mcq.arm_db = cq->wqres.db.db + 1;
 *cq->mcq.set_ci_db = 0;
 *cq->mcq.arm_db = 0;
 memset(cq->buf, 0, cq->buf_size);

 if (cq->type == 130) {
  if (!mlx4_is_eq_vector_valid(mdev->dev, priv->port,
          cq->vector)) {
   cq->vector = cpumask_first(priv->rx_ring[cq->ring]->affinity_mask);

   err = mlx4_assign_eq(mdev->dev, priv->port,
          &cq->vector);
   if (err) {
    mlx4_err(mdev, "Failed assigning an EQ to CQ vector %d\n",
      cq->vector);
    goto free_eq;
   }

   assigned_eq = 1;
  }

  cq->irq_desc =
   irq_to_desc(mlx4_eq_get_irq(mdev->dev,
          cq->vector));
 } else {


  struct mlx4_en_cq *rx_cq;

  cq_idx = cq_idx % priv->rx_ring_num;
  rx_cq = priv->rx_cq[cq_idx];
  cq->vector = rx_cq->vector;
 }

 if (cq->type == 130)
  cq->size = priv->rx_ring[cq->ring]->actual_size;

 if ((cq->type != 130 && priv->hwtstamp_config.tx_type) ||
     (cq->type == 130 && priv->hwtstamp_config.rx_filter))
  timestamp_en = 1;

 cq->mcq.usage = MLX4_RES_USAGE_DRIVER;
 err = mlx4_cq_alloc(mdev->dev, cq->size, &cq->wqres.mtt,
       &mdev->priv_uar, cq->wqres.db.dma, &cq->mcq,
       cq->vector, 0, timestamp_en, &cq->wqres.buf, 0);
 if (err)
  goto free_eq;

 cq->mcq.event = mlx4_en_cq_event;

 switch (cq->type) {
 case 129:
  cq->mcq.comp = mlx4_en_tx_irq;
  netif_tx_napi_add(cq->dev, &cq->napi, mlx4_en_poll_tx_cq,
      NAPI_POLL_WEIGHT);
  napi_enable(&cq->napi);
  break;
 case 130:
  cq->mcq.comp = mlx4_en_rx_irq;
  netif_napi_add(cq->dev, &cq->napi, mlx4_en_poll_rx_cq, 64);
  napi_enable(&cq->napi);
  break;
 case 128:

  cq->xdp_busy = 0;
  break;
 }

 return 0;

free_eq:
 if (assigned_eq)
  mlx4_release_eq(mdev->dev, cq->vector);
 cq->vector = mdev->dev->caps.num_comp_vectors;
 return err;
}
