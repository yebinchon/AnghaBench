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
struct bcma_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int hosttype; } ;

/* Variables and functions */
#define  BCMA_HOSTTYPE_PCI 129 
#define  BCMA_HOSTTYPE_SOC 128 
 int FUNC0 (struct bcma_device*) ; 
 int FUNC1 (struct bcma_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

bool FUNC3(struct bcma_device *core)
{
	switch (core->bus->hosttype) {
	case BCMA_HOSTTYPE_PCI:
		return FUNC0(core);
	case BCMA_HOSTTYPE_SOC:
		return FUNC1(core);
	default:
		FUNC2("unknown host type: %i\n", core->bus->hosttype);
		return false;
	}
}