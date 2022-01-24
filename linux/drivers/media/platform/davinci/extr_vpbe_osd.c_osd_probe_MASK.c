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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device_id {int /*<<< orphan*/  driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct osd_state {int /*<<< orphan*/ * dev; int /*<<< orphan*/  ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  osd_size; int /*<<< orphan*/  osd_base_phys; int /*<<< orphan*/  osd_base; int /*<<< orphan*/  vpbe_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct osd_state* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osd_ops ; 
 struct platform_device_id* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct osd_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	const struct platform_device_id *pdev_id;
	struct osd_state *osd;
	struct resource *res;

	pdev_id = FUNC5(pdev);
	if (!pdev_id)
		return -EINVAL;

	osd = FUNC4(&pdev->dev, sizeof(struct osd_state), GFP_KERNEL);
	if (osd == NULL)
		return -ENOMEM;


	osd->dev = &pdev->dev;
	osd->vpbe_type = pdev_id->driver_data;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	osd->osd_base = FUNC3(&pdev->dev, res);
	if (FUNC0(osd->osd_base))
		return FUNC1(osd->osd_base);

	osd->osd_base_phys = res->start;
	osd->osd_size = FUNC8(res);
	FUNC9(&osd->lock);
	osd->ops = osd_ops;
	FUNC7(pdev, osd);
	FUNC2(osd->dev, "OSD sub device probe success\n");

	return 0;
}