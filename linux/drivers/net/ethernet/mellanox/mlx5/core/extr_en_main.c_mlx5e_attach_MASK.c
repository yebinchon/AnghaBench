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
struct net_device {int dummy; } ;
struct mlx5e_priv {struct net_device* netdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_priv*) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *mdev, void *vpriv)
{
	struct mlx5e_priv *priv = vpriv;
	struct net_device *netdev = priv->netdev;
	int err;

	if (FUNC3(netdev))
		return 0;

	err = FUNC1(mdev);
	if (err)
		return err;

	err = FUNC0(priv);
	if (err) {
		FUNC2(mdev);
		return err;
	}

	return 0;
}