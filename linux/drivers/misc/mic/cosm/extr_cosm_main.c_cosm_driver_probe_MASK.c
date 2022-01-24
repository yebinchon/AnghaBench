#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct cosm_device {int sysfs_heartbeat_enable; int /*<<< orphan*/  index; TYPE_3__ dev; int /*<<< orphan*/  state_sysfs; TYPE_2__* sdev; int /*<<< orphan*/  attr_group; int /*<<< orphan*/  scif_work; int /*<<< orphan*/  reset_trigger_work; int /*<<< orphan*/  cosm_mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  sd; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cosm_device*) ; 
 int /*<<< orphan*/  cosm_reset_trigger_work ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  cosm_scif_work ; 
 int /*<<< orphan*/  FUNC9 (struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cosm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cosm_class ; 
 int /*<<< orphan*/  g_num_dev ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct cosm_device *cdev)
{
	int rc;

	/* Initialize SCIF server at first probe */
	if (FUNC4(1, &g_num_dev) == 1) {
		rc = FUNC8();
		if (rc)
			goto scif_exit;
	}
	FUNC13(&cdev->cosm_mutex);
	FUNC0(&cdev->reset_trigger_work, cosm_reset_trigger_work);
	FUNC0(&cdev->scif_work, cosm_scif_work);
	cdev->sysfs_heartbeat_enable = true;
	FUNC9(cdev);
	cdev->sdev = FUNC11(g_cosm_class, cdev->dev.parent,
			       FUNC2(0, cdev->index), cdev, cdev->attr_group,
			       "mic%d", cdev->index);
	if (FUNC1(cdev->sdev)) {
		rc = FUNC3(cdev->sdev);
		FUNC10(&cdev->dev, "device_create_with_groups failed rc %d\n",
			rc);
		goto scif_exit;
	}

	cdev->state_sysfs = FUNC14(cdev->sdev->kobj.sd,
		"state");
	if (!cdev->state_sysfs) {
		rc = -ENODEV;
		FUNC10(&cdev->dev, "sysfs_get_dirent failed rc %d\n", rc);
		goto destroy_device;
	}
	FUNC6(cdev);
	return 0;
destroy_device:
	FUNC12(g_cosm_class, FUNC2(0, cdev->index));
scif_exit:
	if (FUNC5(&g_num_dev))
		FUNC7();
	return rc;
}