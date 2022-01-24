#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ti_st_plat_data {int /*<<< orphan*/  nshutdown_gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; struct ti_st_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct kim_data_s {int /*<<< orphan*/  core_data; int /*<<< orphan*/ * kim_pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kim_data_s*) ; 
 int /*<<< orphan*/  kim_debugfs_dir ; 
 struct kim_data_s* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uim_attr_grp ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	/* free the GPIOs requested */
	struct ti_st_plat_data	*pdata = pdev->dev.platform_data;
	struct kim_data_s	*kim_gdata;

	kim_gdata = FUNC3(pdev);

	/* Free the Bluetooth/FM/GPIO
	 * nShutdown gpio from the system
	 */
	FUNC1(pdata->nshutdown_gpio);
	FUNC4("nshutdown GPIO Freed");

	FUNC0(kim_debugfs_dir);
	FUNC6(&pdev->dev.kobj, &uim_attr_grp);
	FUNC4("sysfs entries removed");

	kim_gdata->kim_pdev = NULL;
	FUNC5(kim_gdata->core_data);

	FUNC2(kim_gdata);
	kim_gdata = NULL;
	return 0;
}