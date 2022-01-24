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
struct resource {int dummy; } ;
struct prcm_data {int /*<<< orphan*/  nsubdevs; int /*<<< orphan*/  subdevs; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct prcm_data* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun6i_prcm_dt_ids ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	const struct of_device_id *match;
	const struct prcm_data *data;
	struct resource *res;
	int ret;

	match = FUNC2(sun6i_prcm_dt_ids, pdev->dev.of_node);
	if (!match)
		return -EINVAL;

	data = match->data;

	res = FUNC3(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&pdev->dev, "no prcm memory region provided\n");
		return -ENOENT;
	}

	ret = FUNC1(&pdev->dev, 0, data->subdevs, data->nsubdevs,
			      res, -1, NULL);
	if (ret) {
		FUNC0(&pdev->dev, "failed to add subdevices\n");
		return ret;
	}

	return 0;
}