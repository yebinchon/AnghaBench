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
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct in6_validator_info {int /*<<< orphan*/  extack; TYPE_1__* i6vi_dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp*,struct net_device*,unsigned long,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp* FUNC1 (struct net_device*) ; 
 struct mlxsw_sp_rif* FUNC2 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_rif*,struct net_device*,unsigned long) ; 
 int FUNC4 (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

int FUNC6(struct notifier_block *unused,
				   unsigned long event, void *ptr)
{
	struct in6_validator_info *i6vi = (struct in6_validator_info *) ptr;
	struct net_device *dev = i6vi->i6vi_dev->dev;
	struct mlxsw_sp *mlxsw_sp;
	struct mlxsw_sp_rif *rif;
	int err = 0;

	mlxsw_sp = FUNC1(dev);
	if (!mlxsw_sp)
		goto out;

	rif = FUNC2(mlxsw_sp, dev);
	if (!FUNC3(rif, dev, event))
		goto out;

	err = FUNC4(mlxsw_sp, dev, dev->dev_addr,
						  i6vi->extack);
	if (err)
		goto out;

	err = FUNC0(mlxsw_sp, dev, event, i6vi->extack);
out:
	return FUNC5(err);
}