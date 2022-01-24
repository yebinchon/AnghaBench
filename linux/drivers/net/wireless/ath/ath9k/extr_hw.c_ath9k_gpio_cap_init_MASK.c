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
struct ath9k_hw_capabilities {int /*<<< orphan*/  gpio_mask; int /*<<< orphan*/  num_gpio_pins; } ;
struct ath_hw {struct ath9k_hw_capabilities caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7010_GPIO_MASK ; 
 int /*<<< orphan*/  AR7010_NUM_GPIO ; 
 int /*<<< orphan*/  AR9271_GPIO_MASK ; 
 int /*<<< orphan*/  AR9271_NUM_GPIO ; 
 int /*<<< orphan*/  AR9280_GPIO_MASK ; 
 int /*<<< orphan*/  AR9280_NUM_GPIO ; 
 int /*<<< orphan*/  AR9285_GPIO_MASK ; 
 int /*<<< orphan*/  AR9285_NUM_GPIO ; 
 int /*<<< orphan*/  AR9287_GPIO_MASK ; 
 int /*<<< orphan*/  AR9287_NUM_GPIO ; 
 int /*<<< orphan*/  AR9300_GPIO_MASK ; 
 int /*<<< orphan*/  AR9300_NUM_GPIO ; 
 int /*<<< orphan*/  AR9330_GPIO_MASK ; 
 int /*<<< orphan*/  AR9330_NUM_GPIO ; 
 int /*<<< orphan*/  AR9340_GPIO_MASK ; 
 int /*<<< orphan*/  AR9340_NUM_GPIO ; 
 int /*<<< orphan*/  AR9462_GPIO_MASK ; 
 int /*<<< orphan*/  AR9462_NUM_GPIO ; 
 int /*<<< orphan*/  AR9485_GPIO_MASK ; 
 int /*<<< orphan*/  AR9485_NUM_GPIO ; 
 int /*<<< orphan*/  AR9531_GPIO_MASK ; 
 int /*<<< orphan*/  AR9531_NUM_GPIO ; 
 int /*<<< orphan*/  AR9550_GPIO_MASK ; 
 int /*<<< orphan*/  AR9550_NUM_GPIO ; 
 int /*<<< orphan*/  AR9561_GPIO_MASK ; 
 int /*<<< orphan*/  AR9561_NUM_GPIO ; 
 int /*<<< orphan*/  AR9565_GPIO_MASK ; 
 int /*<<< orphan*/  AR9565_NUM_GPIO ; 
 int /*<<< orphan*/  AR9580_GPIO_MASK ; 
 int /*<<< orphan*/  AR9580_NUM_GPIO ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_GPIO_MASK ; 
 int /*<<< orphan*/  AR_NUM_GPIO ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 scalar_t__ FUNC8 (struct ath_hw*) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 scalar_t__ FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 scalar_t__ FUNC12 (struct ath_hw*) ; 
 scalar_t__ FUNC13 (struct ath_hw*) ; 
 scalar_t__ FUNC14 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC15(struct ath_hw *ah)
{
	struct ath9k_hw_capabilities *pCap = &ah->caps;

	if (FUNC1(ah)) {
		pCap->num_gpio_pins = AR9271_NUM_GPIO;
		pCap->gpio_mask = AR9271_GPIO_MASK;
	} else if (FUNC0(ah)) {
		pCap->num_gpio_pins = AR7010_NUM_GPIO;
		pCap->gpio_mask = AR7010_GPIO_MASK;
	} else if (FUNC4(ah)) {
		pCap->num_gpio_pins = AR9287_NUM_GPIO;
		pCap->gpio_mask = AR9287_GPIO_MASK;
	} else if (FUNC3(ah)) {
		pCap->num_gpio_pins = AR9285_NUM_GPIO;
		pCap->gpio_mask = AR9285_GPIO_MASK;
	} else if (FUNC2(ah)) {
		pCap->num_gpio_pins = AR9280_NUM_GPIO;
		pCap->gpio_mask = AR9280_GPIO_MASK;
	} else if (FUNC5(ah)) {
		pCap->num_gpio_pins = AR9300_NUM_GPIO;
		pCap->gpio_mask = AR9300_GPIO_MASK;
	} else if (FUNC6(ah)) {
		pCap->num_gpio_pins = AR9330_NUM_GPIO;
		pCap->gpio_mask = AR9330_GPIO_MASK;
	} else if (FUNC7(ah)) {
		pCap->num_gpio_pins = AR9340_NUM_GPIO;
		pCap->gpio_mask = AR9340_GPIO_MASK;
	} else if (FUNC8(ah)) {
		pCap->num_gpio_pins = AR9462_NUM_GPIO;
		pCap->gpio_mask = AR9462_GPIO_MASK;
	} else if (FUNC9(ah)) {
		pCap->num_gpio_pins = AR9485_NUM_GPIO;
		pCap->gpio_mask = AR9485_GPIO_MASK;
	} else if (FUNC10(ah)) {
		pCap->num_gpio_pins = AR9531_NUM_GPIO;
		pCap->gpio_mask = AR9531_GPIO_MASK;
	} else if (FUNC11(ah)) {
		pCap->num_gpio_pins = AR9550_NUM_GPIO;
		pCap->gpio_mask = AR9550_GPIO_MASK;
	} else if (FUNC12(ah)) {
		pCap->num_gpio_pins = AR9561_NUM_GPIO;
		pCap->gpio_mask = AR9561_GPIO_MASK;
	} else if (FUNC13(ah)) {
		pCap->num_gpio_pins = AR9565_NUM_GPIO;
		pCap->gpio_mask = AR9565_GPIO_MASK;
	} else if (FUNC14(ah)) {
		pCap->num_gpio_pins = AR9580_NUM_GPIO;
		pCap->gpio_mask = AR9580_GPIO_MASK;
	} else {
		pCap->num_gpio_pins = AR_NUM_GPIO;
		pCap->gpio_mask = AR_GPIO_MASK;
	}
}