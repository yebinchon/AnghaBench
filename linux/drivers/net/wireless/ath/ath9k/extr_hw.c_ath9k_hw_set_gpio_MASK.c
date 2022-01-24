#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_gpio_pins; int gpio_mask; int gpio_requested; } ;
struct ath_hw {TYPE_1__ caps; } ;

/* Variables and functions */
 scalar_t__ AR7010_GPIO_OUT ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ AR_GPIO_IN_OUT ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

void FUNC6(struct ath_hw *ah, u32 gpio, u32 val)
{
	FUNC4(gpio >= ah->caps.num_gpio_pins);

	if (FUNC0(ah) || FUNC1(ah))
		val = !val;
	else
		val = !!val;

	if (FUNC2(gpio) & ah->caps.gpio_mask) {
		u32 out_addr = FUNC0(ah) ?
			AR7010_GPIO_OUT : AR_GPIO_IN_OUT;

		FUNC3(ah, out_addr, val << gpio, FUNC2(gpio));
	} else if (FUNC2(gpio) & ah->caps.gpio_requested) {
		FUNC5(gpio, val);
	} else {
		FUNC4(1);
	}
}