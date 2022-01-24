#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct fimc_md {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
#define  IDX_CSIS 131 
#define  IDX_FIMC 130 
#define  IDX_FLITE 129 
#define  IDX_IS_ISP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fimc_md*,struct platform_device*,void*) ; 
 int FUNC8 (struct fimc_md*,void*) ; 
 int FUNC9 (struct fimc_md*,void*) ; 
 int FUNC10 (struct fimc_md*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct fimc_md *fmd,
					    struct platform_device *pdev,
					    int plat_entity)
{
	struct device *dev = &pdev->dev;
	int ret = -EPROBE_DEFER;
	void *drvdata;

	/* Lock to ensure dev->driver won't change. */
	FUNC4(dev);

	if (!dev->driver || !FUNC11(dev->driver->owner))
		goto dev_unlock;

	drvdata = FUNC1(dev);
	/* Some subdev didn't probe successfully id drvdata is NULL */
	if (drvdata) {
		switch (plat_entity) {
		case IDX_FIMC:
			ret = FUNC8(fmd, drvdata);
			break;
		case IDX_FLITE:
			ret = FUNC10(fmd, drvdata);
			break;
		case IDX_CSIS:
			ret = FUNC7(fmd, pdev, drvdata);
			break;
		case IDX_IS_ISP:
			ret = FUNC9(fmd, drvdata);
			break;
		default:
			ret = -ENODEV;
		}
	}

	FUNC6(dev->driver->owner);
dev_unlock:
	FUNC5(dev);
	if (ret == -EPROBE_DEFER)
		FUNC2(&fmd->pdev->dev, "deferring %s device registration\n",
			FUNC3(dev));
	else if (ret < 0)
		FUNC0(&fmd->pdev->dev, "%s device registration failed (%d)\n",
			FUNC3(dev), ret);
	return ret;
}