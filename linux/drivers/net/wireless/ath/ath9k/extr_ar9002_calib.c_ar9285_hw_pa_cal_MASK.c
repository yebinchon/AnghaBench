#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct ath_hw {TYPE_2__ pacal_info; TYPE_1__* eep_ops; } ;
struct ath_common {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ; 
 int AR9285_AN_RF2G1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_ENPACAL ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPAOUT ; 
 int AR9285_AN_RF2G2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G2_OFFCAL ; 
 int AR9285_AN_RF2G3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_PDVCCOMP ; 
 int AR9285_AN_RF2G6 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G6_CCOMP ; 
 int /*<<< orphan*/  AR9285_AN_RF2G6_OFFS ; 
 int AR9285_AN_RF2G7 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PADRVGN2TAB0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PWDDB ; 
 int AR9285_AN_RF2G8 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G8_PADRVGN2TAB0 ; 
 int AR9285_AN_RF2G9 ; 
 int AR9285_AN_RXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDDACIF ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDRXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDV2I ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_SPARE9 ; 
 int AR9285_AN_TOP2 ; 
 int AR9285_AN_TOP3 ; 
 int /*<<< orphan*/  AR9285_AN_TOP3_PWDDAC ; 
 int FUNC0 (int**) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  EEP_TXGAIN_TYPE ; 
 int MAX_PACAL_SKIPCOUNT ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int,int) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static inline void FUNC9(struct ath_hw *ah, bool is_reset)
{
	struct ath_common *common = FUNC5(ah);
	u32 regVal;
	int i, offset, offs_6_1, offs_0;
	u32 ccomp_org, reg_field;
	u32 regList[][2] = {
		{ 0x786c, 0 },
		{ 0x7854, 0 },
		{ 0x7820, 0 },
		{ 0x7824, 0 },
		{ 0x7868, 0 },
		{ 0x783c, 0 },
		{ 0x7838, 0 },
	};

	FUNC6(common, CALIBRATE, "Running PA Calibration\n");

	/* PA CAL is not needed for high power solution */
	if (ah->eep_ops->get_eeprom(ah, EEP_TXGAIN_TYPE) ==
	    AR5416_EEP_TXGAIN_HIGH_POWER)
		return;

	for (i = 0; i < FUNC0(regList); i++)
		regList[i][1] = FUNC2(ah, regList[i][0]);

	regVal = FUNC2(ah, 0x7834);
	regVal &= (~(0x1));
	FUNC4(ah, 0x7834, regVal);
	regVal = FUNC2(ah, 0x9808);
	regVal |= (0x1 << 27);
	FUNC4(ah, 0x9808, regVal);

	FUNC3(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC, 1);
	FUNC3(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1, 1);
	FUNC3(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I, 1);
	FUNC3(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF, 1);
	FUNC3(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL, 0);
	FUNC3(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB, 0);
	FUNC3(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL, 0);
	FUNC3(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1, 0);
	FUNC3(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2, 0);
	FUNC3(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT, 0);
	FUNC3(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);
	FUNC3(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);
	ccomp_org = FUNC1(FUNC2(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_CCOMP);
	FUNC3(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, 0xf);

	FUNC4(ah, AR9285_AN_TOP2, 0xca0358a0);
	FUNC8(30);
	FUNC3(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, 0);
	FUNC3(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 0);

	for (i = 6; i > 0; i--) {
		regVal = FUNC2(ah, 0x7834);
		regVal |= (1 << (19 + i));
		FUNC4(ah, 0x7834, regVal);
		FUNC8(1);
		regVal = FUNC2(ah, 0x7834);
		regVal &= (~(0x1 << (19 + i)));
		reg_field = FUNC1(FUNC2(ah, 0x7840), AR9285_AN_RXTXBB1_SPARE9);
		regVal |= (reg_field << (19 + i));
		FUNC4(ah, 0x7834, regVal);
	}

	FUNC3(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 1);
	FUNC8(1);
	reg_field = FUNC1(FUNC2(ah, AR9285_AN_RF2G9), AR9285_AN_RXTXBB1_SPARE9);
	FUNC3(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, reg_field);
	offs_6_1 = FUNC1(FUNC2(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_OFFS);
	offs_0   = FUNC1(FUNC2(ah, AR9285_AN_RF2G3), AR9285_AN_RF2G3_PDVCCOMP);

	offset = (offs_6_1<<1) | offs_0;
	offset = offset - 0;
	offs_6_1 = offset>>1;
	offs_0 = offset & 1;

	if ((!is_reset) && (ah->pacal_info.prev_offset == offset)) {
		if (ah->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
			ah->pacal_info.max_skipcount =
				2 * ah->pacal_info.max_skipcount;
		ah->pacal_info.skipcount = ah->pacal_info.max_skipcount;
	} else {
		ah->pacal_info.max_skipcount = 1;
		ah->pacal_info.skipcount = 0;
		ah->pacal_info.prev_offset = offset;
	}

	FUNC3(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, offs_6_1);
	FUNC3(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, offs_0);

	regVal = FUNC2(ah, 0x7834);
	regVal |= 0x1;
	FUNC4(ah, 0x7834, regVal);
	regVal = FUNC2(ah, 0x9808);
	regVal &= (~(0x1 << 27));
	FUNC4(ah, 0x9808, regVal);

	for (i = 0; i < FUNC0(regList); i++)
		FUNC4(ah, regList[i][0], regList[i][1]);

	FUNC3(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, ccomp_org);
}