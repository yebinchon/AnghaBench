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
struct sfp {int /*<<< orphan*/ * gpio; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ GPIOD_IN ; 
 unsigned int GPIO_MAX ; 
 scalar_t__* gpio_flags ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct sfp *sfp)
{
	unsigned int i, state, v;

	for (i = state = 0; i < GPIO_MAX; i++) {
		if (gpio_flags[i] != GPIOD_IN || !sfp->gpio[i])
			continue;

		v = FUNC1(sfp->gpio[i]);
		if (v)
			state |= FUNC0(i);
	}

	return state;
}