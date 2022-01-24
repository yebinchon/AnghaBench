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
struct vsp1_device {int /*<<< orphan*/  fcp; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct vsp1_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vsp1_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct vsp1_device *vsp1 = FUNC0(pdev);

	FUNC3(vsp1);
	FUNC2(vsp1->fcp);

	FUNC1(&pdev->dev);

	return 0;
}