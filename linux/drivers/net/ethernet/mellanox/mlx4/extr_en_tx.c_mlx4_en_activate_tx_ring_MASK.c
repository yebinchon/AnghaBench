#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int qpn; } ;
struct TYPE_12__ {void* usr_page; } ;
struct TYPE_11__ {int /*<<< orphan*/  mtt; } ;
struct TYPE_10__ {TYPE_2__* uar; } ;
struct mlx4_en_tx_ring {int sp_cqn; int cons; int last_nr_txbb; int size; int buf_size; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  sp_affinity_mask; int /*<<< orphan*/  sp_qp_state; TYPE_6__ sp_qp; TYPE_5__ sp_context; TYPE_4__ sp_wqres; TYPE_3__ bf; scalar_t__ bf_alloced; int /*<<< orphan*/  qpn; int /*<<< orphan*/  sp_stride; void* mr_key; void* doorbell_qpn; int /*<<< orphan*/  free_tx_desc; int /*<<< orphan*/  buf; int /*<<< orphan*/  tx_info; scalar_t__ prod; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  dev; struct mlx4_en_dev* mdev; } ;
struct TYPE_8__ {int key; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; TYPE_1__ mr; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_QP_STATE_RST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_5__*) ; 
 int /*<<< orphan*/  mlx4_en_free_tx_desc ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_en_priv *priv,
			     struct mlx4_en_tx_ring *ring,
			     int cq, int user_prio)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	ring->sp_cqn = cq;
	ring->prod = 0;
	ring->cons = 0xffffffff;
	ring->last_nr_txbb = 1;
	FUNC2(ring->tx_info, 0, ring->size * sizeof(struct mlx4_en_tx_info));
	FUNC2(ring->buf, 0, ring->buf_size);
	ring->free_tx_desc = mlx4_en_free_tx_desc;

	ring->sp_qp_state = MLX4_QP_STATE_RST;
	ring->doorbell_qpn = FUNC0(ring->sp_qp.qpn << 8);
	ring->mr_key = FUNC0(mdev->mr.key);

	FUNC3(priv, ring->size, ring->sp_stride, 1, 0, ring->qpn,
				ring->sp_cqn, user_prio, &ring->sp_context);
	if (ring->bf_alloced)
		ring->sp_context.usr_page =
			FUNC0(FUNC5(mdev->dev,
							 ring->bf.uar->index));

	err = FUNC4(mdev->dev, &ring->sp_wqres.mtt, &ring->sp_context,
			       &ring->sp_qp, &ring->sp_qp_state);
	if (!FUNC1(&ring->sp_affinity_mask))
		FUNC6(priv->dev, &ring->sp_affinity_mask,
				    ring->queue_index);

	return err;
}