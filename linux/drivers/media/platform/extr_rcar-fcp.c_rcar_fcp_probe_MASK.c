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
struct rcar_fcp_device {int /*<<< orphan*/  list; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rcar_fcp_device* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcp_devices ; 
 int /*<<< orphan*/  fcp_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct rcar_fcp_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct rcar_fcp_device *fcp;

	fcp = FUNC0(&pdev->dev, sizeof(*fcp), GFP_KERNEL);
	if (fcp == NULL)
		return -ENOMEM;

	fcp->dev = &pdev->dev;

	FUNC5(&pdev->dev);

	FUNC2(&fcp_lock);
	FUNC1(&fcp->list, &fcp_devices);
	FUNC3(&fcp_lock);

	FUNC4(pdev, fcp);

	return 0;
}