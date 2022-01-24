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
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC0(IFDOWN, priv, "Close port called\n");

	FUNC2(&mdev->state_lock);

	FUNC1(dev, 0);
	FUNC5(dev);

	FUNC3(&mdev->state_lock);
	return 0;
}