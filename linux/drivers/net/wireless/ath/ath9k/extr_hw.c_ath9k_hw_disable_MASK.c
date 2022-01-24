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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  ATH9K_RESET_COLD ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct ath_hw *ah)
{
	if (!FUNC2(ah, ATH9K_PM_AWAKE))
		return false;

	if (!FUNC1(ah, ATH9K_RESET_COLD))
		return false;

	FUNC0(ah, NULL);
	return true;
}