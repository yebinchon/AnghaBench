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
struct netdevsim_shared_dev {int refcnt; int switch_id; int /*<<< orphan*/  ddir; } ;
struct netdevsim {struct netdevsim_shared_dev* sdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct netdevsim_shared_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netdevsim_shared_dev*) ; 
 struct netdevsim_shared_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsim_sdev_ddir ; 
 int /*<<< orphan*/  nsim_sdev_id ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

struct netdevsim_shared_dev *FUNC8(struct netdevsim *joinns)
{
	struct netdevsim_shared_dev *sdev;
	char sdev_ddir_name[10];
	int err;

	if (joinns) {
		if (FUNC3(!joinns->sdev))
			return FUNC0(-EINVAL);
		sdev = joinns->sdev;
		sdev->refcnt++;
		return sdev;
	}

	sdev = FUNC6(sizeof(*sdev), GFP_KERNEL);
	if (!sdev)
		return FUNC0(-ENOMEM);
	sdev->refcnt = 1;
	sdev->switch_id = nsim_sdev_id++;

	FUNC7(sdev_ddir_name, "%u", sdev->switch_id);
	sdev->ddir = FUNC4(sdev_ddir_name, nsim_sdev_ddir);
	if (FUNC1(sdev->ddir)) {
		err = FUNC2(sdev->ddir) ?: -EINVAL;
		goto err_sdev_free;
	}

	return sdev;

err_sdev_free:
	nsim_sdev_id--;
	FUNC5(sdev);
	return FUNC0(err);
}