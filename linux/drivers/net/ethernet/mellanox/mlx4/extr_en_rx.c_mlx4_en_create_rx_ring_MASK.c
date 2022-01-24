#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {TYPE_3__ direct; } ;
struct TYPE_14__ {TYPE_4__ buf; } ;
struct mlx4_en_rx_ring {int size; int size_mask; int stride; int /*<<< orphan*/  xdp_rxq; int /*<<< orphan*/ * rx_info; int /*<<< orphan*/  hwtstamp_rx_filter; TYPE_7__ wqres; int /*<<< orphan*/  buf; scalar_t__ buf_size; scalar_t__ log_stride; scalar_t__ cons; scalar_t__ prod; } ;
struct mlx4_en_rx_alloc {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  rx_filter; } ;
struct mlx4_en_priv {TYPE_5__ hwtstamp_config; int /*<<< orphan*/  dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_6__* dev; } ;
struct TYPE_13__ {int numa_node; TYPE_2__* persist; } ;
struct TYPE_9__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_EN_MAX_RX_FRAGS ; 
 scalar_t__ TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 struct mlx4_en_rx_ring* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_6__*,TYPE_7__*,scalar_t__) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mlx4_en_priv *priv,
			   struct mlx4_en_rx_ring **pring,
			   u32 size, u16 stride, int node, int queue_index)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_rx_ring *ring;
	int err = -ENOMEM;
	int tmp;

	ring = FUNC6(sizeof(*ring), GFP_KERNEL, node);
	if (!ring) {
		FUNC1(priv, "Failed to allocate RX ring structure\n");
		return -ENOMEM;
	}

	ring->prod = 0;
	ring->cons = 0;
	ring->size = size;
	ring->size_mask = size - 1;
	ring->stride = stride;
	ring->log_stride = FUNC2(ring->stride) - 1;
	ring->buf_size = ring->size * ring->stride + TXBB_SIZE;

	if (FUNC10(&ring->xdp_rxq, priv->dev, queue_index) < 0)
		goto err_ring;

	tmp = size * FUNC8(MLX4_EN_MAX_RX_FRAGS *
					sizeof(struct mlx4_en_rx_alloc));
	ring->rx_info = FUNC5(tmp, GFP_KERNEL, node);
	if (!ring->rx_info) {
		err = -ENOMEM;
		goto err_xdp_info;
	}

	FUNC0(DRV, priv, "Allocated rx_info ring at addr:%p size:%d\n",
		 ring->rx_info, tmp);

	/* Allocate HW buffers on provided NUMA node */
	FUNC9(&mdev->dev->persist->pdev->dev, node);
	err = FUNC7(mdev->dev, &ring->wqres, ring->buf_size);
	FUNC9(&mdev->dev->persist->pdev->dev, mdev->dev->numa_node);
	if (err)
		goto err_info;

	ring->buf = ring->wqres.buf.direct.buf;

	ring->hwtstamp_rx_filter = priv->hwtstamp_config.rx_filter;

	*pring = ring;
	return 0;

err_info:
	FUNC4(ring->rx_info);
	ring->rx_info = NULL;
err_xdp_info:
	FUNC11(&ring->xdp_rxq);
err_ring:
	FUNC3(ring);
	*pring = NULL;

	return err;
}