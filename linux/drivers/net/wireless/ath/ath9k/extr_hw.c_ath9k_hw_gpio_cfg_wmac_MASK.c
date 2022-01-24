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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7010_GPIO_OE ; 
 int AR7010_GPIO_OE_AS_INPUT ; 
 int AR7010_GPIO_OE_AS_OUTPUT ; 
 int AR7010_GPIO_OE_MASK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_GPIO_OE_OUT ; 
 int AR_GPIO_OE_OUT_DRV ; 
 int AR_GPIO_OE_OUT_DRV_ALL ; 
 int AR_GPIO_OE_OUT_DRV_NO ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah, u32 gpio, bool out,
				   u32 ah_signal_type)
{
	u32 gpio_set, gpio_shift = gpio;

	if (FUNC0(ah)) {
		gpio_set = out ?
			AR7010_GPIO_OE_AS_OUTPUT : AR7010_GPIO_OE_AS_INPUT;
		FUNC2(ah, AR7010_GPIO_OE, gpio_set << gpio_shift,
			AR7010_GPIO_OE_MASK << gpio_shift);
	} else if (FUNC1(ah)) {
		gpio_set = out ? 1 : 0;
		FUNC2(ah, AR_GPIO_OE_OUT, gpio_set << gpio_shift,
			gpio_set << gpio_shift);
	} else {
		gpio_shift = gpio << 1;
		gpio_set = out ?
			AR_GPIO_OE_OUT_DRV_ALL : AR_GPIO_OE_OUT_DRV_NO;
		FUNC2(ah, AR_GPIO_OE_OUT, gpio_set << gpio_shift,
			AR_GPIO_OE_OUT_DRV << gpio_shift);

		if (out)
			FUNC3(ah, gpio, ah_signal_type);
	}
}