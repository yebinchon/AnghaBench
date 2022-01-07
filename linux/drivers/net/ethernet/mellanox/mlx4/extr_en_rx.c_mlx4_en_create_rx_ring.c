
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int buf; } ;
struct TYPE_11__ {TYPE_3__ direct; } ;
struct TYPE_14__ {TYPE_4__ buf; } ;
struct mlx4_en_rx_ring {int size; int size_mask; int stride; int xdp_rxq; int * rx_info; int hwtstamp_rx_filter; TYPE_7__ wqres; int buf; scalar_t__ buf_size; scalar_t__ log_stride; scalar_t__ cons; scalar_t__ prod; } ;
struct mlx4_en_rx_alloc {int dummy; } ;
struct TYPE_12__ {int rx_filter; } ;
struct mlx4_en_priv {TYPE_5__ hwtstamp_config; int dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_6__* dev; } ;
struct TYPE_13__ {int numa_node; TYPE_2__* persist; } ;
struct TYPE_9__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int DRV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_EN_MAX_RX_FRAGS ;
 scalar_t__ TXBB_SIZE ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int *,int) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 scalar_t__ ffs (int) ;
 int kfree (struct mlx4_en_rx_ring*) ;
 int kvfree (int *) ;
 int * kvzalloc_node (int,int ,int) ;
 struct mlx4_en_rx_ring* kzalloc_node (int,int ,int) ;
 int mlx4_alloc_hwq_res (TYPE_6__*,TYPE_7__*,scalar_t__) ;
 int roundup_pow_of_two (int) ;
 int set_dev_node (int *,int) ;
 scalar_t__ xdp_rxq_info_reg (int *,int ,int) ;
 int xdp_rxq_info_unreg (int *) ;

int mlx4_en_create_rx_ring(struct mlx4_en_priv *priv,
      struct mlx4_en_rx_ring **pring,
      u32 size, u16 stride, int node, int queue_index)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_rx_ring *ring;
 int err = -ENOMEM;
 int tmp;

 ring = kzalloc_node(sizeof(*ring), GFP_KERNEL, node);
 if (!ring) {
  en_err(priv, "Failed to allocate RX ring structure\n");
  return -ENOMEM;
 }

 ring->prod = 0;
 ring->cons = 0;
 ring->size = size;
 ring->size_mask = size - 1;
 ring->stride = stride;
 ring->log_stride = ffs(ring->stride) - 1;
 ring->buf_size = ring->size * ring->stride + TXBB_SIZE;

 if (xdp_rxq_info_reg(&ring->xdp_rxq, priv->dev, queue_index) < 0)
  goto err_ring;

 tmp = size * roundup_pow_of_two(MLX4_EN_MAX_RX_FRAGS *
     sizeof(struct mlx4_en_rx_alloc));
 ring->rx_info = kvzalloc_node(tmp, GFP_KERNEL, node);
 if (!ring->rx_info) {
  err = -ENOMEM;
  goto err_xdp_info;
 }

 en_dbg(DRV, priv, "Allocated rx_info ring at addr:%p size:%d\n",
   ring->rx_info, tmp);


 set_dev_node(&mdev->dev->persist->pdev->dev, node);
 err = mlx4_alloc_hwq_res(mdev->dev, &ring->wqres, ring->buf_size);
 set_dev_node(&mdev->dev->persist->pdev->dev, mdev->dev->numa_node);
 if (err)
  goto err_info;

 ring->buf = ring->wqres.buf.direct.buf;

 ring->hwtstamp_rx_filter = priv->hwtstamp_config.rx_filter;

 *pring = ring;
 return 0;

err_info:
 kvfree(ring->rx_info);
 ring->rx_info = ((void*)0);
err_xdp_info:
 xdp_rxq_info_unreg(&ring->xdp_rxq);
err_ring:
 kfree(ring);
 *pring = ((void*)0);

 return err;
}
