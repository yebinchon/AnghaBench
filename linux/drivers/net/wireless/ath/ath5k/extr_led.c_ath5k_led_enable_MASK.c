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
struct ath5k_hw {int /*<<< orphan*/  led_pin; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_STAT_LEDSOFT ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath5k_hw *ah)
{
	if (FUNC2(ATH_STAT_LEDSOFT, ah->status)) {
		FUNC0(ah, ah->led_pin);
		FUNC1(ah);
	}
}