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
struct fman_mac {int exceptions; int /*<<< orphan*/  regs; int /*<<< orphan*/  memac_drv_param; } ;
typedef  enum fman_mac_exceptions { ____Placeholder_fman_mac_exceptions } fman_mac_exceptions ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct fman_mac *memac,
			enum fman_mac_exceptions exception, bool enable)
{
	u32 bit_mask = 0;

	if (!FUNC1(memac->memac_drv_param))
		return -EINVAL;

	bit_mask = FUNC0(exception);
	if (bit_mask) {
		if (enable)
			memac->exceptions |= bit_mask;
		else
			memac->exceptions &= ~bit_mask;
	} else {
		FUNC2("Undefined exception\n");
		return -EINVAL;
	}
	FUNC3(memac->regs, bit_mask, enable);

	return 0;
}