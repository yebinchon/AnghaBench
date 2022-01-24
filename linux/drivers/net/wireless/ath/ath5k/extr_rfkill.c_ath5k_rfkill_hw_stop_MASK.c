#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  toggleq; } ;
struct TYPE_4__ {int /*<<< orphan*/  ee_header; } ;
struct TYPE_5__ {TYPE_1__ cap_eeprom; } ;
struct ath5k_hw {TYPE_3__ rf_kill; TYPE_2__ ah_capabilities; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct ath5k_hw *ah)
{
	/* disable interrupt for rfkill switch */
	if (FUNC0(ah->ah_capabilities.cap_eeprom.ee_header))
		FUNC2(ah, false);

	FUNC3(&ah->rf_kill.toggleq);

	/* enable RFKILL when stopping HW so Wifi LED is turned off */
	FUNC1(ah);
}