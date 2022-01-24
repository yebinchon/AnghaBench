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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  vmem_values ; 
 int /*<<< orphan*/  vmem_vtg ; 

int FUNC3(unsigned int mV)
{
	int val;

	if (mV == 0)
		return FUNC2(&vmem_vtg, 0, 0, 0);

	val = FUNC1(mV, vmem_values, FUNC0(vmem_values));
	if (val < 0)
		return -EINVAL;
	return FUNC2(&vmem_vtg, mV, val, 0x02);
}