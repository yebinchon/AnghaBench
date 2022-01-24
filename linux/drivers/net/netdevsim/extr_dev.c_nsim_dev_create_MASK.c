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
struct TYPE_2__ {int id_len; int /*<<< orphan*/  id; } ;
struct nsim_dev {int fw_update_status; int /*<<< orphan*/  test1; int /*<<< orphan*/  max_macs; int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  port_list; TYPE_1__ switch_id; struct nsim_bus_dev* nsim_bus_dev; } ;
struct nsim_bus_dev {int /*<<< orphan*/  dev; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct nsim_dev* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NSIM_DEV_MAX_MACS_DEFAULT ; 
 int /*<<< orphan*/  NSIM_DEV_TEST1_DEFAULT ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC5 (struct devlink*) ; 
 int FUNC6 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nsim_dev* FUNC8 (struct devlink*) ; 
 int FUNC9 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct nsim_dev*) ; 
 int FUNC16 (struct nsim_dev*) ; 
 int /*<<< orphan*/  nsim_dev_devlink_ops ; 
 int /*<<< orphan*/  FUNC17 (struct nsim_dev*) ; 
 int FUNC18 (struct nsim_dev*,struct devlink*) ; 
 int FUNC19 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC20 (struct devlink*) ; 
 int FUNC21 (struct devlink*) ; 
 int /*<<< orphan*/  nsim_devlink_params ; 
 int /*<<< orphan*/  FUNC22 (struct nsim_dev*,struct devlink*) ; 

__attribute__((used)) static struct nsim_dev *
FUNC23(struct nsim_bus_dev *nsim_bus_dev, unsigned int port_count)
{
	struct nsim_dev *nsim_dev;
	struct devlink *devlink;
	int err;

	devlink = FUNC3(&nsim_dev_devlink_ops, sizeof(*nsim_dev));
	if (!devlink)
		return FUNC1(-ENOMEM);
	nsim_dev = FUNC8(devlink);
	nsim_dev->nsim_bus_dev = nsim_bus_dev;
	nsim_dev->switch_id.id_len = sizeof(nsim_dev->switch_id.id);
	FUNC12(nsim_dev->switch_id.id, nsim_dev->switch_id.id_len);
	FUNC2(&nsim_dev->port_list);
	FUNC13(&nsim_dev->port_list_lock);
	nsim_dev->fw_update_status = true;
	nsim_dev->max_macs = NSIM_DEV_MAX_MACS_DEFAULT;
	nsim_dev->test1 = NSIM_DEV_TEST1_DEFAULT;

	err = FUNC19(devlink);
	if (err)
		goto err_devlink_free;

	err = FUNC9(devlink, &nsim_bus_dev->dev);
	if (err)
		goto err_resources_unregister;

	err = FUNC6(devlink, nsim_devlink_params,
				      FUNC0(nsim_devlink_params));
	if (err)
		goto err_dl_unregister;
	FUNC22(nsim_dev, devlink);

	err = FUNC18(nsim_dev, devlink);
	if (err)
		goto err_params_unregister;

	err = FUNC21(devlink);
	if (err)
		goto err_dummy_region_exit;

	err = FUNC16(nsim_dev);
	if (err)
		goto err_traps_exit;

	err = FUNC14(nsim_dev);
	if (err)
		goto err_debugfs_exit;

	FUNC5(devlink);
	return nsim_dev;

err_debugfs_exit:
	FUNC15(nsim_dev);
err_traps_exit:
	FUNC20(devlink);
err_dummy_region_exit:
	FUNC17(nsim_dev);
err_params_unregister:
	FUNC7(devlink, nsim_devlink_params,
				  FUNC0(nsim_devlink_params));
err_dl_unregister:
	FUNC11(devlink);
err_resources_unregister:
	FUNC10(devlink, NULL);
err_devlink_free:
	FUNC4(devlink);
	return FUNC1(err);
}