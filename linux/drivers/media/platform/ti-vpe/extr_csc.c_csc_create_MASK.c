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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct csc_data {int /*<<< orphan*/  base; int /*<<< orphan*/ * res; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct csc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct csc_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct csc_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 

struct csc_data *FUNC8(struct platform_device *pdev, const char *res_name)
{
	struct csc_data *csc;

	FUNC3(&pdev->dev, "csc_create\n");

	csc = FUNC6(&pdev->dev, sizeof(*csc), GFP_KERNEL);
	if (!csc) {
		FUNC4(&pdev->dev, "couldn't alloc csc_data\n");
		return FUNC1(-ENOMEM);
	}

	csc->pdev = pdev;

	csc->res = FUNC7(pdev, IORESOURCE_MEM,
						res_name);
	if (csc->res == NULL) {
		FUNC4(&pdev->dev, "missing '%s' platform resources data\n",
			res_name);
		return FUNC1(-ENODEV);
	}

	csc->base = FUNC5(&pdev->dev, csc->res);
	if (FUNC2(csc->base)) {
		FUNC4(&pdev->dev, "failed to ioremap\n");
		return FUNC0(csc->base);
	}

	return csc;
}