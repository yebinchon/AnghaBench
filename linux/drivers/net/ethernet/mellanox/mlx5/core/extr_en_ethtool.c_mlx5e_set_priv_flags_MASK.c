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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; } ;
typedef  enum mlx5e_priv_flag { ____Placeholder_mlx5e_priv_flag } mlx5e_priv_flag ;

/* Variables and functions */
 int MLX5E_NUM_PFLAGS ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, u32 pflags)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	enum mlx5e_priv_flag pflag;
	int err;

	FUNC1(&priv->state_lock);

	for (pflag = 0; pflag < MLX5E_NUM_PFLAGS; pflag++) {
		err = FUNC0(netdev, pflags, pflag);
		if (err)
			break;
	}

	FUNC2(&priv->state_lock);

	/* Need to fix some features.. */
	FUNC4(netdev);

	return err;
}