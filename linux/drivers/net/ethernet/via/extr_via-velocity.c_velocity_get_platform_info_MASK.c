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
struct velocity_info {int no_eeprom; TYPE_1__* dev; int /*<<< orphan*/  memaddr; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ VELOCITY_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct resource*) ; 

__attribute__((used)) static int FUNC4(struct velocity_info *vptr)
{
	struct resource res;
	int ret;

	if (FUNC2(vptr->dev->of_node, "no-eeprom", NULL))
		vptr->no_eeprom = 1;

	ret = FUNC1(vptr->dev->of_node, 0, &res);
	if (ret) {
		FUNC0(vptr->dev, "unable to find memory address\n");
		return ret;
	}

	vptr->memaddr = res.start;

	if (FUNC3(&res) < VELOCITY_IO_SIZE) {
		FUNC0(vptr->dev, "memory region is too small.\n");
		return -EINVAL;
	}

	return 0;
}