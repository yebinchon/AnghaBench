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

/* Variables and functions */
 int MAX_OCTEON_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  octeon_device ; 
 int /*<<< orphan*/  octeon_devices_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(int conf_type)
{
	int i;

	FUNC0(octeon_device, 0, (sizeof(void *) * MAX_OCTEON_DEVICES));
	for (i = 0; i <  MAX_OCTEON_DEVICES; i++)
		FUNC1(i, conf_type);
	FUNC2(&octeon_devices_lock);
}