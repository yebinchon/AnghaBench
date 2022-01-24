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
struct mlx4_en_priv {int /*<<< orphan*/  ets; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ieee_ets {int /*<<< orphan*/  prio_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ieee_ets*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_en_priv*,struct ieee_ets*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_en_priv*,struct ieee_ets*) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct ieee_ets *ets)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	err = FUNC3(priv, ets);
	if (err)
		return err;

	err = FUNC1(mdev->dev, priv->port, ets->prio_tc);
	if (err)
		return err;

	err = FUNC2(priv, ets, NULL);
	if (err)
		return err;

	FUNC0(&priv->ets, ets, sizeof(priv->ets));

	return 0;
}