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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct regmap_config {scalar_t__ max_register; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; scalar_t__ reg_stride; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct altr_sysmgr {struct regmap* regmap; int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap_config altr_sysmgr_regmap_cfg ; 
 int /*<<< orphan*/ * FUNC2 (struct device*,scalar_t__,scalar_t__) ; 
 struct altr_sysmgr* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct regmap_config*) ; 
 struct regmap* FUNC5 (struct device*,int /*<<< orphan*/ *,struct regmap_config*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct altr_sysmgr*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  s10_protected_reg_read ; 
 int /*<<< orphan*/  s10_protected_reg_write ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct altr_sysmgr *sysmgr;
	struct regmap *regmap;
	struct resource *res;
	struct regmap_config sysmgr_config = altr_sysmgr_regmap_cfg;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;

	sysmgr = FUNC3(dev, sizeof(*sysmgr), GFP_KERNEL);
	if (!sysmgr)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENOENT;

	sysmgr_config.max_register = FUNC10(res) -
				     sysmgr_config.reg_stride;
	if (FUNC6(np, "altr,sys-mgr-s10")) {
		/* Need physical address for SMCC call */
		sysmgr->base = (resource_size_t *)res->start;
		sysmgr_config.reg_read = s10_protected_reg_read;
		sysmgr_config.reg_write = s10_protected_reg_write;

		regmap = FUNC4(dev, NULL, sysmgr->base,
					  &sysmgr_config);
	} else {
		sysmgr->base = FUNC2(dev, res->start,
					    FUNC10(res));
		if (!sysmgr->base)
			return -ENOMEM;

		sysmgr_config.max_register = res->end - res->start - 3;
		regmap = FUNC5(dev, sysmgr->base,
					       &sysmgr_config);
	}

	if (FUNC0(regmap)) {
		FUNC9("regmap init failed\n");
		return FUNC1(regmap);
	}

	sysmgr->regmap = regmap;

	FUNC8(pdev, sysmgr);

	return 0;
}