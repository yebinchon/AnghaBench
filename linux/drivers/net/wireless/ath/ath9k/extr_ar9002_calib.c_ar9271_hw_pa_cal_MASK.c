#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct ath_hw {TYPE_1__ pacal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9271_AN_RF2G3_CCOMP ; 
 int /*<<< orphan*/  AR9271_AN_RF2G6_OFFS ; 
 int AR9285_AN_RF2G1 ; 
 int AR9285_AN_RF2G1_ENPACAL ; 
 int AR9285_AN_RF2G1_PDPADRV1 ; 
 int AR9285_AN_RF2G1_PDPADRV2 ; 
 int AR9285_AN_RF2G1_PDPAOUT ; 
 int AR9285_AN_RF2G2 ; 
 int AR9285_AN_RF2G2_OFFCAL ; 
 int AR9285_AN_RF2G3 ; 
 int AR9285_AN_RF2G6 ; 
 int AR9285_AN_RF2G7 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PADRVGN2TAB0 ; 
 int AR9285_AN_RF2G7_PWDDB ; 
 int AR9285_AN_RF2G8 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G8_PADRVGN2TAB0 ; 
 int AR9285_AN_RF2G9 ; 
 int AR9285_AN_RXTXBB1 ; 
 int AR9285_AN_RXTXBB1_PDDACIF ; 
 int AR9285_AN_RXTXBB1_PDRXTXBB1 ; 
 int AR9285_AN_RXTXBB1_PDV2I ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_SPARE9 ; 
 int AR9285_AN_TOP2 ; 
 int AR9285_AN_TOP3 ; 
 int AR9285_AN_TOP3_PWDDAC ; 
 unsigned int FUNC0 (int**) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int MAX_PACAL_SKIPCOUNT ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int,int) ; 
 int FUNC6 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int**,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct ath_hw *ah, bool is_reset)
{
	u32 regVal;
	unsigned int i;
	u32 regList[][2] = {
		{ AR9285_AN_TOP3, 0 },
		{ AR9285_AN_RXTXBB1, 0 },
		{ AR9285_AN_RF2G1, 0 },
		{ AR9285_AN_RF2G2, 0 },
		{ AR9285_AN_TOP2, 0 },
		{ AR9285_AN_RF2G8, 0 },
		{ AR9285_AN_RF2G7, 0 },
		{ AR9285_AN_RF2G3, 0 },
	};

	FUNC7(ah, regList, FUNC0(regList));

	FUNC2(ah);
	/* 7834, b1=0 */
	FUNC5(ah, AR9285_AN_RF2G6, 1 << 0);
	/* 9808, b27=1 */
	FUNC10(ah, 0x9808, 1 << 27);
	/* 786c,b23,1, pwddac=1 */
	FUNC10(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC);
	/* 7854, b5,1, pdrxtxbb=1 */
	FUNC10(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1);
	/* 7854, b7,1, pdv2i=1 */
	FUNC10(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I);
	/* 7854, b8,1, pddacinterface=1 */
	FUNC10(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF);
	/* 7824,b12,0, offcal=0 */
	FUNC5(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL);
	/* 7838, b1,0, pwddb=0 */
	FUNC5(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB);
	/* 7820,b11,0, enpacal=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL);
	/* 7820,b25,1, pdpadrv1=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1);
	/* 7820,b24,0, pdpadrv2=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2);
	/* 7820,b23,0, pdpaout=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT);
	/* 783c,b14-16,7, padrvgn2tab_0=7 */
	FUNC9(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);
	/*
	 * 7838,b29-31,0, padrvgn1tab_0=0
	 * does not matter since we turn it off
	 */
	FUNC9(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);
	/* 7828, b0-11, ccom=fff */
	FUNC9(ah, AR9285_AN_RF2G3, AR9271_AN_RF2G3_CCOMP, 0xfff);
	FUNC8(ah);

	/* Set:
	 * localmode=1,bmode=1,bmoderxtx=1,synthon=1,
	 * txon=1,paon=1,oscon=1,synthon_force=1
	 */
	FUNC11(ah, AR9285_AN_TOP2, 0xca0358a0);
	FUNC12(30);
	FUNC9(ah, AR9285_AN_RF2G6, AR9271_AN_RF2G6_OFFS, 0);

	/* find off_6_1; */
	for (i = 6; i > 0; i--) {
		regVal = FUNC6(ah, AR9285_AN_RF2G6);
		regVal |= (1 << (20 + i));
		FUNC11(ah, AR9285_AN_RF2G6, regVal);
		FUNC12(1);
		/* regVal = REG_READ(ah, 0x7834); */
		regVal &= (~(0x1 << (20 + i)));
		regVal |= (FUNC3(FUNC6(ah, AR9285_AN_RF2G9),
			      AR9285_AN_RXTXBB1_SPARE9)
			    << (20 + i));
		FUNC11(ah, AR9285_AN_RF2G6, regVal);
	}

	regVal = (regVal >> 20) & 0x7f;

	/* Update PA cal info */
	if ((!is_reset) && (ah->pacal_info.prev_offset == regVal)) {
		if (ah->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
			ah->pacal_info.max_skipcount =
				2 * ah->pacal_info.max_skipcount;
		ah->pacal_info.skipcount = ah->pacal_info.max_skipcount;
	} else {
		ah->pacal_info.max_skipcount = 1;
		ah->pacal_info.skipcount = 0;
		ah->pacal_info.prev_offset = regVal;
	}


	FUNC2(ah);
	/* 7834, b1=1 */
	FUNC10(ah, AR9285_AN_RF2G6, 1 << 0);
	/* 9808, b27=0 */
	FUNC5(ah, 0x9808, 1 << 27);
	FUNC8(ah);

	FUNC1(ah);
	for (i = 0; i < FUNC0(regList); i++)
		FUNC11(ah, regList[i][0], regList[i][1]);

	FUNC4(ah);
}