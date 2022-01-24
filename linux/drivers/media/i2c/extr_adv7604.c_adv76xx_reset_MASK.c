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
struct adv76xx_state {scalar_t__ reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct adv76xx_state *state)
{
	if (state->reset_gpio) {
		/* ADV76XX can be reset by a low reset pulse of minimum 5 ms. */
		FUNC0(state->reset_gpio, 0);
		FUNC1(5000, 10000);
		FUNC0(state->reset_gpio, 1);
		/* It is recommended to wait 5 ms after the low pulse before */
		/* an I2C write is performed to the ADV76XX. */
		FUNC1(5000, 10000);
	}
}