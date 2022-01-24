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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ DM355EVM_MSP_LED ; 
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int msp_led_cache ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset, int value)
{
	int mask, bits;

	/* NOTE:  there are some other signals that could be
	 * packaged as output GPIOs, but they aren't as useful
	 * as the LEDs ... so for now we don't.
	 */
	if (FUNC1(offset) != DM355EVM_MSP_LED)
		return -EINVAL;

	mask = FUNC0(offset);
	bits = msp_led_cache;

	bits &= ~mask;
	if (value)
		bits |= mask;
	msp_led_cache = bits;

	return FUNC2(bits, DM355EVM_MSP_LED);
}