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
struct dst_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  RDC_8820_PIO_0_ENABLE ; 
 scalar_t__ FUNC0 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dst_state *state)
{
	if (FUNC0(state, ~0, RDC_8820_PIO_0_ENABLE, 0, NO_DELAY) < 0) {
		FUNC1("dst_gpio_outb ERROR !\n");
		return -1;
	}
	FUNC2(1000);

	return 0;
}