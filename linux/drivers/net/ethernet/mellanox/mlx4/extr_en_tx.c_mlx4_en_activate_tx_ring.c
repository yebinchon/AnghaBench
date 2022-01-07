
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int qpn; } ;
struct TYPE_12__ {void* usr_page; } ;
struct TYPE_11__ {int mtt; } ;
struct TYPE_10__ {TYPE_2__* uar; } ;
struct mlx4_en_tx_ring {int sp_cqn; int cons; int last_nr_txbb; int size; int buf_size; int queue_index; int sp_affinity_mask; int sp_qp_state; TYPE_6__ sp_qp; TYPE_5__ sp_context; TYPE_4__ sp_wqres; TYPE_3__ bf; scalar_t__ bf_alloced; int qpn; int sp_stride; void* mr_key; void* doorbell_qpn; int free_tx_desc; int buf; int tx_info; scalar_t__ prod; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct mlx4_en_priv {int dev; struct mlx4_en_dev* mdev; } ;
struct TYPE_8__ {int key; } ;
struct mlx4_en_dev {int dev; TYPE_1__ mr; } ;
struct TYPE_9__ {int index; } ;


 int MLX4_QP_STATE_RST ;
 void* cpu_to_be32 (int) ;
 int cpumask_empty (int *) ;
 int memset (int ,int ,int) ;
 int mlx4_en_fill_qp_context (struct mlx4_en_priv*,int,int ,int,int ,int ,int,int,TYPE_5__*) ;
 int mlx4_en_free_tx_desc ;
 int mlx4_qp_to_ready (int ,int *,TYPE_5__*,TYPE_6__*,int *) ;
 int mlx4_to_hw_uar_index (int ,int ) ;
 int netif_set_xps_queue (int ,int *,int ) ;

int mlx4_en_activate_tx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_tx_ring *ring,
        int cq, int user_prio)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;

 ring->sp_cqn = cq;
 ring->prod = 0;
 ring->cons = 0xffffffff;
 ring->last_nr_txbb = 1;
 memset(ring->tx_info, 0, ring->size * sizeof(struct mlx4_en_tx_info));
 memset(ring->buf, 0, ring->buf_size);
 ring->free_tx_desc = mlx4_en_free_tx_desc;

 ring->sp_qp_state = MLX4_QP_STATE_RST;
 ring->doorbell_qpn = cpu_to_be32(ring->sp_qp.qpn << 8);
 ring->mr_key = cpu_to_be32(mdev->mr.key);

 mlx4_en_fill_qp_context(priv, ring->size, ring->sp_stride, 1, 0, ring->qpn,
    ring->sp_cqn, user_prio, &ring->sp_context);
 if (ring->bf_alloced)
  ring->sp_context.usr_page =
   cpu_to_be32(mlx4_to_hw_uar_index(mdev->dev,
        ring->bf.uar->index));

 err = mlx4_qp_to_ready(mdev->dev, &ring->sp_wqres.mtt, &ring->sp_context,
          &ring->sp_qp, &ring->sp_qp_state);
 if (!cpumask_empty(&ring->sp_affinity_mask))
  netif_set_xps_queue(priv->dev, &ring->sp_affinity_mask,
        ring->queue_index);

 return err;
}
