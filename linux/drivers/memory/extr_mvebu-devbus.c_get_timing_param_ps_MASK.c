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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct devbus {int tick_ps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*,char const*) ; 
 int FUNC2 (struct device_node*,char const*,int*) ; 

__attribute__((used)) static int FUNC3(struct devbus *devbus,
			       struct device_node *node,
			       const char *name,
			       u32 *ticks)
{
	u32 time_ps;
	int err;

	err = FUNC2(node, name, &time_ps);
	if (err < 0) {
		FUNC1(devbus->dev, "%pOF has no '%s' property\n",
			node, name);
		return err;
	}

	*ticks = (time_ps + devbus->tick_ps - 1) / devbus->tick_ps;

	FUNC0(devbus->dev, "%s: %u ps -> 0x%x\n",
		name, time_ps, *ticks);
	return 0;
}