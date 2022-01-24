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
typedef  int u8 ;
struct TYPE_5__ {int miscConfiguration; } ;
struct ar9300_eeprom {TYPE_2__ baseEepHeader; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct TYPE_6__ {int xlna_bias_strength; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH1_RXTX4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH2_RXTX4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXTX4_XLNA_BIAS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah, bool is2ghz)
{
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
	u8 bias;

	if (!(eep->baseEepHeader.miscConfiguration & 0x40))
		return;

	if (!FUNC0(ah))
		return;

	bias = FUNC2(ah, is2ghz)->xlna_bias_strength;
	FUNC1(ah, AR_PHY_65NM_CH0_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
		      bias & 0x3);
	bias >>= 2;
	FUNC1(ah, AR_PHY_65NM_CH1_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
		      bias & 0x3);
	bias >>= 2;
	FUNC1(ah, AR_PHY_65NM_CH2_RXTX4, AR_PHY_65NM_RXTX4_XLNA_BIAS,
		      bias & 0x3);
}