#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct mlx5_core_dev* FUNC0 (struct devlink*) ; 
 int FUNC1 (struct mlx5_core_dev*,struct firmware const*,struct netlink_ext_ack*) ; 
 int FUNC2 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct devlink *devlink,
				     const char *file_name,
				     const char *component,
				     struct netlink_ext_ack *extack)
{
	struct mlx5_core_dev *dev = FUNC0(devlink);
	const struct firmware *fw;
	int err;

	if (component)
		return -EOPNOTSUPP;

	err = FUNC2(&fw, file_name, &dev->pdev->dev);
	if (err)
		return err;

	return FUNC1(dev, fw, extack);
}