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
struct ath_hw {int gpio_mask; int gpio_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah)
{
	u32 gpio_mask = ah->gpio_mask;
	int i;

	for (i = 0; gpio_mask; i++, gpio_mask >>= 1) {
		if (!(gpio_mask & 1))
			continue;

		FUNC2(ah, i, NULL,
					  AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
		FUNC3(ah, i, !!(ah->gpio_val & FUNC0(i)));
		FUNC1(ah, i);
	}
}