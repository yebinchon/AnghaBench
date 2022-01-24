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
struct netlink_ext_ack {int dummy; } ;
struct mlx4_dev {struct mlx4_dev_persistent* persist; } ;
struct mlx4_priv {struct mlx4_dev dev; } ;
struct mlx4_dev_persistent {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; scalar_t__ num_vfs; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct devlink *devlink,
				    struct netlink_ext_ack *extack)
{
	struct mlx4_priv *priv = FUNC0(devlink);
	struct mlx4_dev *dev = &priv->dev;
	struct mlx4_dev_persistent *persist = dev->persist;

	if (persist->num_vfs)
		FUNC2(persist->dev, "Reload performed on PF, will cause reset on operating Virtual Functions\n");
	FUNC1(persist->pdev);
	return 0;
}