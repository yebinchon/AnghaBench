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
struct vpdma_data {void (* cb ) (struct platform_device*) ;int /*<<< orphan*/  base; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  VPDMA_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vpdma_data*) ; 

int FUNC8(struct platform_device *pdev, struct vpdma_data *vpdma,
		void (*cb)(struct platform_device *pdev))
{
	struct resource *res;
	int r;

	FUNC0(&pdev->dev, "vpdma_create\n");

	vpdma->pdev = pdev;
	vpdma->cb = cb;
	FUNC6(&vpdma->lock);

	res = FUNC3(pdev, IORESOURCE_MEM, "vpdma");
	if (res == NULL) {
		FUNC1(&pdev->dev, "missing platform resources data\n");
		return -ENODEV;
	}

	vpdma->base = FUNC2(&pdev->dev, res->start, FUNC5(res));
	if (!vpdma->base) {
		FUNC1(&pdev->dev, "failed to ioremap\n");
		return -ENOMEM;
	}

	r = FUNC7(vpdma);
	if (r) {
		FUNC4("failed to load firmware %s\n", VPDMA_FIRMWARE);
		return r;
	}

	return 0;
}