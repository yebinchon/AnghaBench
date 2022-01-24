#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct mlx4_en_rx_ring {int /*<<< orphan*/ * rx_info; int /*<<< orphan*/  wqres; int /*<<< orphan*/  xdp_rxq; int /*<<< orphan*/  xdp_prog; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  state_lock; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 scalar_t__ TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct bpf_prog* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mlx4_en_priv *priv,
			     struct mlx4_en_rx_ring **pring,
			     u32 size, u16 stride)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_rx_ring *ring = *pring;
	struct bpf_prog *old_prog;

	old_prog = FUNC5(
					ring->xdp_prog,
					FUNC3(&mdev->state_lock));
	if (old_prog)
		FUNC0(old_prog);
	FUNC6(&ring->xdp_rxq);
	FUNC4(mdev->dev, &ring->wqres, size * stride + TXBB_SIZE);
	FUNC2(ring->rx_info);
	ring->rx_info = NULL;
	FUNC1(ring);
	*pring = NULL;
}