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
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 scalar_t__ MCI_PS_DISABLE ; 
 int /*<<< orphan*/  MCI_STATE_GET_WLAN_PS_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	if (!FUNC2(ah))
		goto set;
	/*
	 * If MCI is being used, set PWR_SAV only when MCI's
	 * PS state is disabled.
	 */
	if (FUNC1(ah, MCI_STATE_GET_WLAN_PS_STATE) != MCI_PS_DISABLE)
		return;
set:
	FUNC0(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
}