#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlx4_en_priv {size_t port; int /*<<< orphan*/  service_task; int /*<<< orphan*/  stats_task; int /*<<< orphan*/  res; scalar_t__ allocated; scalar_t__ registered; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/ ** upper; int /*<<< orphan*/ ** pndev; TYPE_2__* dev; int /*<<< orphan*/  workqueue; } ;
struct TYPE_4__ {int flags2; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int MLX4_DEV_CAP_FLAG2_TS ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

void FUNC14(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC12(dev);
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC2(DRV, priv, "Destroying netdev on port:%d\n", priv->port);

	/* Unregister device - this will close the port if it was up */
	if (priv->registered) {
		FUNC1(FUNC9(mdev->dev,
							      priv->port));
		FUNC13(dev);
	}

	if (priv->allocated)
		FUNC8(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

	FUNC0(&priv->stats_task);
	FUNC0(&priv->service_task);
	/* flush any pending task for this netdev */
	FUNC3(mdev->workqueue);

	if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
		FUNC7(mdev);

	/* Detach the netdev so tasks would not attempt to access it */
	FUNC10(&mdev->state_lock);
	mdev->pndev[priv->port] = NULL;
	mdev->upper[priv->port] = NULL;

#ifdef CONFIG_RFS_ACCEL
	mlx4_en_cleanup_filters(priv);
#endif

	FUNC6(priv);
	FUNC11(&mdev->state_lock);

	FUNC4(dev);
}