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
struct device {int dummy; } ;
struct brcmf_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct brcmf_bus*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct brcmf_bus* FUNC2 (struct device*) ; 

void FUNC3(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC2(dev);

	if (FUNC1(bus_if, NULL, 0) < 0)
		FUNC0(TRACE, "failed to create coredump\n");
}