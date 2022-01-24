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
struct net_device {int dummy; } ;
struct mlx5e_txqsq {int dummy; } ;
struct mlx5e_priv {int* tx_rates; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; struct mlx5e_txqsq** txq2sq; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct net_device*,struct mlx5e_txqsq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int index, u32 rate)
{
	struct mlx5e_priv *priv = FUNC6(dev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_txqsq *sq = priv->txq2sq[index];
	int err = 0;

	if (!FUNC1(mdev)) {
		FUNC5(dev, "Rate limiting is not supported on this device\n");
		return -EINVAL;
	}

	/* rate is given in Mb/sec, HW config is in Kb/sec */
	rate = rate << 10;

	/* Check whether rate in valid range, 0 is always valid */
	if (rate && !FUNC0(mdev, rate)) {
		FUNC5(dev, "TX rate %u, is not in range\n", rate);
		return -ERANGE;
	}

	FUNC3(&priv->state_lock);
	if (FUNC7(MLX5E_STATE_OPENED, &priv->state))
		err = FUNC2(dev, sq, rate);
	if (!err)
		priv->tx_rates[index] = rate;
	FUNC4(&priv->state_lock);

	return err;
}