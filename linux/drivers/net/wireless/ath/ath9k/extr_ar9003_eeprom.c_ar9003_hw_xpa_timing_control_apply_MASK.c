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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int featureEnable; } ;
struct ar9300_eeprom {TYPE_2__ baseEepHeader; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct TYPE_6__ {int /*<<< orphan*/  txFrameToXpaOn; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON ; 
 int /*<<< orphan*/  AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah, bool is2ghz)
{
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
	u8 xpa_ctl;

	if (!(eep->baseEepHeader.featureEnable & 0x80))
		return;

	if (!FUNC0(ah) &&
	    !FUNC1(ah) &&
	    !FUNC4(ah) &&
	    !FUNC2(ah) &&
	    !FUNC3(ah))
		return;

	xpa_ctl = FUNC6(ah, is2ghz)->txFrameToXpaOn;
	if (is2ghz)
		FUNC5(ah, AR_PHY_XPA_TIMING_CTL,
			      AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON, xpa_ctl);
	else
		FUNC5(ah, AR_PHY_XPA_TIMING_CTL,
			      AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON, xpa_ctl);
}