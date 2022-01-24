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
typedef  scalar_t__ u32 ;
struct gbe_slave {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEVICE_EMACSL_RESET_POLL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct gbe_slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GMACSL_RET_WARN_RESET_INCOMPLETE ; 
 scalar_t__ SOFT_RESET ; 
 scalar_t__ SOFT_RESET_MASK ; 
 int /*<<< orphan*/  emac_regs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soft_reset ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gbe_slave *slave)
{
	u32 i, v;

	/* Set the soft reset bit */
	FUNC2(SOFT_RESET, FUNC0(slave, emac_regs, soft_reset));

	/* Wait for the bit to clear */
	for (i = 0; i < DEVICE_EMACSL_RESET_POLL_COUNT; i++) {
		v = FUNC1(FUNC0(slave, emac_regs, soft_reset));
		if ((v & SOFT_RESET_MASK) != SOFT_RESET)
			return 0;
	}

	/* Timeout on the reset */
	return GMACSL_RET_WARN_RESET_INCOMPLETE;
}