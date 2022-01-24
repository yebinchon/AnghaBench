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
struct ath_hw {int htc_reset_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_RESET_WARM ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct ath_hw *ah)
{
	if (FUNC2(ah))
		FUNC0(ah);

	if (!FUNC3(ah, ATH9K_RESET_WARM))
		return false;

	FUNC1(ah, NULL);
	ah->htc_reset_init = true;
	return true;
}