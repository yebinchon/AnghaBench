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
struct xsdfec_dev {int /*<<< orphan*/  clks; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  miscdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_nrs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xsdfec_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct xsdfec_dev *xsdfec;

	xsdfec = FUNC2(pdev);
	FUNC1(&xsdfec->miscdev);
	FUNC0(&dev_nrs, xsdfec->dev_id);
	FUNC3(&xsdfec->clks);
	return 0;
}