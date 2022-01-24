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
struct TYPE_2__ {scalar_t__ num_gpio_pins; int gpio_mask; } ;
struct ath_hw {TYPE_1__ caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah, u32 gpio, bool out,
				  const char *label, u32 ah_signal_type)
{
	FUNC2(gpio >= ah->caps.num_gpio_pins);

	if (FUNC1(gpio) & ah->caps.gpio_mask)
		FUNC4(ah, gpio, out, ah_signal_type);
	else if (FUNC0(ah))
		FUNC3(ah, gpio, out, label);
	else
		FUNC2(1);
}