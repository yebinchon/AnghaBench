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
struct cc_data {TYPE_1__* res; int /*<<< orphan*/  base; } ;
struct cal_dev {struct platform_device* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cc_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct cal_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cal_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct cc_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct cc_data *FUNC8(struct cal_dev *dev, unsigned int core)
{
	struct platform_device *pdev = dev->pdev;
	struct cc_data *cc;

	cc = FUNC6(&pdev->dev, sizeof(*cc), GFP_KERNEL);
	if (!cc)
		return FUNC1(-ENOMEM);

	cc->res = FUNC7(pdev,
					       IORESOURCE_MEM,
					       (core == 0) ?
						"cal_rx_core0" :
						"cal_rx_core1");
	cc->base = FUNC5(&pdev->dev, cc->res);
	if (FUNC2(cc->base)) {
		FUNC4(dev, "failed to ioremap\n");
		return FUNC0(cc->base);
	}

	FUNC3(1, dev, "ioresource %s at %pa - %pa\n",
		cc->res->name, &cc->res->start, &cc->res->end);

	return cc;
}