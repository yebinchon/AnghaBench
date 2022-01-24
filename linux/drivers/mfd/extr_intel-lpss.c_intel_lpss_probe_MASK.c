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
struct intel_lpss_platform_info {scalar_t__ irq; TYPE_2__* mem; int /*<<< orphan*/  properties; } ;
struct intel_lpss {scalar_t__ devid; TYPE_1__* cell; scalar_t__ priv; int /*<<< orphan*/  caps; struct device* dev; struct intel_lpss_platform_info const* info; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct TYPE_4__ {int /*<<< orphan*/  properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FLAG_SMART_SUSPEND ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPSS_IDMA64_DRIVER_NAME ; 
 scalar_t__ LPSS_PRIV_CAPS ; 
 scalar_t__ LPSS_PRIV_OFFSET ; 
 int /*<<< orphan*/  LPSS_PRIV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct intel_lpss* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct intel_lpss*) ; 
 int FUNC8 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_lpss*) ; 
 int /*<<< orphan*/  intel_lpss_devid_ida ; 
 scalar_t__ FUNC10 (struct intel_lpss*) ; 
 TYPE_1__ intel_lpss_idma64_cell ; 
 int /*<<< orphan*/  FUNC11 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_lpss*) ; 
 int FUNC14 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_lpss*) ; 
 int FUNC16 (struct device*,int,TYPE_1__*,int,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

int FUNC18(struct device *dev,
		     const struct intel_lpss_platform_info *info)
{
	struct intel_lpss *lpss;
	int ret;

	if (!info || !info->mem || info->irq <= 0)
		return -EINVAL;

	lpss = FUNC4(dev, sizeof(*lpss), GFP_KERNEL);
	if (!lpss)
		return -ENOMEM;

	lpss->priv = FUNC3(dev, info->mem->start + LPSS_PRIV_OFFSET,
				  LPSS_PRIV_SIZE);
	if (!lpss->priv)
		return -ENOMEM;

	lpss->info = info;
	lpss->dev = dev;
	lpss->caps = FUNC17(lpss->priv + LPSS_PRIV_CAPS);

	FUNC1(dev, lpss);

	ret = FUNC7(lpss);
	if (ret)
		return ret;

	lpss->cell->properties = info->properties;

	FUNC11(lpss);

	lpss->devid = FUNC5(&intel_lpss_devid_ida, 0, 0, GFP_KERNEL);
	if (lpss->devid < 0)
		return lpss->devid;

	ret = FUNC14(lpss);
	if (ret)
		goto err_clk_register;

	FUNC12(lpss);

	ret = FUNC8(lpss);
	if (ret)
		FUNC2(dev, "Failed to create debugfs entries\n");

	if (FUNC10(lpss)) {
		ret = FUNC16(dev, lpss->devid, &intel_lpss_idma64_cell,
				      1, info->mem, info->irq, NULL);
		if (ret)
			FUNC2(dev, "Failed to add %s, fallback to PIO\n",
				 LPSS_IDMA64_DRIVER_NAME);
	}

	ret = FUNC16(dev, lpss->devid, lpss->cell,
			      1, info->mem, info->irq, NULL);
	if (ret)
		goto err_remove_ltr;

	FUNC0(dev, DPM_FLAG_SMART_SUSPEND);

	return 0;

err_remove_ltr:
	FUNC9(lpss);
	FUNC13(lpss);
	FUNC15(lpss);

err_clk_register:
	FUNC6(&intel_lpss_devid_ida, lpss->devid);

	return ret;
}