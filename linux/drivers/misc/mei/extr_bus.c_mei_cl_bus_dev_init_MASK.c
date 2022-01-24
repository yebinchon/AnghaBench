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
struct mei_me_client {int bus_added; } ;
struct mei_device {int /*<<< orphan*/  device_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  cl_bus_lock; } ;
struct mei_cl_device {int /*<<< orphan*/  bus_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mei_cl_device* FUNC3 (struct mei_device*,struct mei_me_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_me_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mei_device *bus,
				struct mei_me_client *me_cl)
{
	struct mei_cl_device *cldev;

	FUNC0(!FUNC5(&bus->cl_bus_lock));

	FUNC1(bus->dev, "initializing %pUl", FUNC4(me_cl));

	if (me_cl->bus_added)
		return;

	cldev = FUNC3(bus, me_cl);
	if (!cldev)
		return;

	me_cl->bus_added = true;
	FUNC2(&cldev->bus_list, &bus->device_list);

}