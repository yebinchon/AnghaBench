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
struct intel_lpss {int /*<<< orphan*/  devid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct intel_lpss* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_lpss*) ; 
 int /*<<< orphan*/  intel_lpss_devid_ida ; 
 int /*<<< orphan*/  FUNC3 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_lpss*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void FUNC6(struct device *dev)
{
	struct intel_lpss *lpss = FUNC0(dev);

	FUNC5(dev);
	FUNC2(lpss);
	FUNC3(lpss);
	FUNC4(lpss);
	FUNC1(&intel_lpss_devid_ida, lpss->devid);
}