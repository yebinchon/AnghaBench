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
struct dst_state {int type_flags; } ;

/* Variables and functions */
 int DST_TYPE_HAS_FW_1 ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  RDC_8820_PIO_0_DISABLE ; 
 scalar_t__ FUNC0 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct dst_state *state)
{
	if (FUNC0(state, ~0, RDC_8820_PIO_0_DISABLE, RDC_8820_PIO_0_DISABLE, NO_DELAY) < 0) {
		FUNC1("dst_gpio_outb ERROR !\n");
		return -1;
	}
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC2(1000);

	return 0;
}