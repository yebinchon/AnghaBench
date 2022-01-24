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
struct ad5820_device {int standby; int /*<<< orphan*/  vana; } ;

/* Variables and functions */
 int FUNC0 (struct ad5820_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ad5820_device *coil, bool standby)
{
	int ret = 0, ret2;

	/*
	 * Go to standby first as real power off my be denied by the hardware
	 * (single power line control for both coil and sensor).
	 */
	if (standby) {
		coil->standby = true;
		ret = FUNC0(coil);
	}

	ret2 = FUNC1(coil->vana);
	if (ret)
		return ret;
	return ret2;
}