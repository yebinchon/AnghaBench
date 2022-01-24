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
struct TYPE_2__ {unsigned long ti_emif_sram_config; int /*<<< orphan*/  ti_emif_base_addr_phys; int /*<<< orphan*/  ti_emif_base_addr_virt; } ;
struct ti_emif_data {TYPE_1__ pm_data; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 struct ti_emif_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct ti_emif_data* emif_instance ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,struct device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,struct ti_emif_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_emif_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_emif_data*) ; 
 int /*<<< orphan*/  ti_emif_of_match ; 
 int FUNC9 (struct device*,struct ti_emif_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int ret;
	struct resource *res;
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	struct ti_emif_data *emif_data;

	emif_data = FUNC3(dev, sizeof(*emif_data), GFP_KERNEL);
	if (!emif_data)
		return -ENOMEM;

	match = FUNC4(ti_emif_of_match, &pdev->dev);
	if (!match)
		return -ENODEV;

	emif_data->pm_data.ti_emif_sram_config = (unsigned long)match->data;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	emif_data->pm_data.ti_emif_base_addr_virt = FUNC2(dev,
									  res);
	if (FUNC0(emif_data->pm_data.ti_emif_base_addr_virt)) {
		ret = FUNC1(emif_data->pm_data.ti_emif_base_addr_virt);
		return ret;
	}

	emif_data->pm_data.ti_emif_base_addr_phys = res->start;

	FUNC7(emif_data);

	ret = FUNC6(dev, emif_data);
	if (ret)
		return ret;

	ret = FUNC9(dev, emif_data);
	if (ret)
		goto fail_free_sram;

	emif_instance = emif_data;

	return 0;

fail_free_sram:
	FUNC8(emif_data);

	return ret;
}