#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__** rx_ring; int /*<<< orphan*/ * tx_ring_num; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 size_t TX_XDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC3 (struct net_device*) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC3(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	const struct bpf_prog *xdp_prog;
	u32 prog_id = 0;

	if (!priv->tx_ring_num[TX_XDP])
		return prog_id;

	FUNC1(&mdev->state_lock);
	xdp_prog = FUNC4(
		priv->rx_ring[0]->xdp_prog,
		FUNC0(&mdev->state_lock));
	if (xdp_prog)
		prog_id = xdp_prog->aux->id;
	FUNC2(&mdev->state_lock);

	return prog_id;
}