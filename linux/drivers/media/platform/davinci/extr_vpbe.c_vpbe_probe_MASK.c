#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vpbe_device {int /*<<< orphan*/  lock; struct vpbe_config* cfg; int /*<<< orphan*/  current_timings; TYPE_3__* pdev; int /*<<< orphan*/  ops; } ;
struct TYPE_6__ {int /*<<< orphan*/ * module_name; } ;
struct TYPE_5__ {int /*<<< orphan*/ * module_name; } ;
struct vpbe_config {TYPE_4__* outputs; TYPE_2__ venc; TYPE_1__ osd; int /*<<< orphan*/ * module_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  driver; struct vpbe_config* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {scalar_t__ num_modes; int /*<<< orphan*/ * modes; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vpbe_device*) ; 
 struct vpbe_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct vpbe_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vpbe_dev_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct vpbe_device *vpbe_dev;
	struct vpbe_config *cfg;

	if (!pdev->dev.platform_data) {
		FUNC4(pdev->dev.driver, "No platform data\n");
		return -ENODEV;
	}
	cfg = pdev->dev.platform_data;

	if (!cfg->module_name[0] ||
	    !cfg->osd.module_name[0] ||
	    !cfg->venc.module_name[0]) {
		FUNC4(pdev->dev.driver, "vpbe display module names not defined\n");
		return -EINVAL;
	}

	vpbe_dev = FUNC1(sizeof(*vpbe_dev), GFP_KERNEL);
	if (!vpbe_dev)
		return -ENOMEM;

	vpbe_dev->cfg = cfg;
	vpbe_dev->ops = vpbe_dev_ops;
	vpbe_dev->pdev = &pdev->dev;

	if (cfg->outputs->num_modes > 0)
		vpbe_dev->current_timings = vpbe_dev->cfg->outputs[0].modes[0];
	else {
		FUNC0(vpbe_dev);
		return -ENODEV;
	}

	/* set the driver data in platform device */
	FUNC3(pdev, vpbe_dev);
	FUNC2(&vpbe_dev->lock);

	return 0;
}