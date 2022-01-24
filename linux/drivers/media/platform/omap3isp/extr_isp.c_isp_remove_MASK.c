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
struct platform_device {int dummy; } ;
struct isp_device {int /*<<< orphan*/  notifier; int /*<<< orphan*/  crashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct isp_device* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct isp_device *isp = FUNC8(pdev);

	FUNC10(&isp->notifier);
	FUNC4(isp);
	FUNC2(isp);
	FUNC5(isp);

	FUNC0(isp, false);
	FUNC3(isp);
	FUNC1(isp, false);

	FUNC7(&isp->crashed);
	FUNC9(&isp->notifier);

	FUNC6(isp);

	return 0;
}