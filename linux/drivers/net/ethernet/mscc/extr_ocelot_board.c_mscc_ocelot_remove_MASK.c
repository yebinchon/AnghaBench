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
struct ocelot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocelot*) ; 
 int /*<<< orphan*/  ocelot_netdevice_nb ; 
 int /*<<< orphan*/  ocelot_switchdev_blocking_nb ; 
 int /*<<< orphan*/  ocelot_switchdev_nb ; 
 struct ocelot* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ocelot *ocelot = FUNC1(pdev);

	FUNC0(ocelot);
	FUNC3(&ocelot_switchdev_blocking_nb);
	FUNC4(&ocelot_switchdev_nb);
	FUNC2(&ocelot_netdevice_nb);

	return 0;
}