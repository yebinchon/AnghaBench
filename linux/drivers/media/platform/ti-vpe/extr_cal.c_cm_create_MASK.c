#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cm_data {TYPE_1__* res; int /*<<< orphan*/  base; } ;
struct cal_dev {struct platform_device* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cm_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cm_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct cal_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cal_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct cm_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct cm_data *FUNC8(struct cal_dev *dev)
{
	struct platform_device *pdev = dev->pdev;
	struct cm_data *cm;

	cm = FUNC6(&pdev->dev, sizeof(*cm), GFP_KERNEL);
	if (!cm)
		return FUNC1(-ENOMEM);

	cm->res = FUNC7(pdev, IORESOURCE_MEM,
						"camerrx_control");
	cm->base = FUNC5(&pdev->dev, cm->res);
	if (FUNC2(cm->base)) {
		FUNC4(dev, "failed to ioremap\n");
		return FUNC0(cm->base);
	}

	FUNC3(1, dev, "ioresource %s at %pa - %pa\n",
		cm->res->name, &cm->res->start, &cm->res->end);

	return cm;
}