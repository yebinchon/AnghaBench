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
struct isc_device {int /*<<< orphan*/  hclock; int /*<<< orphan*/  ispck; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isc_device*) ; 
 struct isc_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct isc_device *isc = FUNC3(pdev);

	FUNC4(&pdev->dev);

	FUNC2(isc);

	FUNC5(&isc->v4l2_dev);

	FUNC0(isc->ispck);
	FUNC0(isc->hclock);

	FUNC1(isc);

	return 0;
}