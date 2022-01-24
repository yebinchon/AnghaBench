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
typedef  int u32 ;
struct solo_dev {scalar_t__ type; int nr_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ SOLO_DEV_6010 ; 
 scalar_t__ SOLO_DEV_6110 ; 
 int FUNC4 (struct solo_dev*) ; 
 int SOLO_EREF_EXT_SIZE ; 
 int FUNC5 (struct solo_dev*) ; 
 int FUNC6 (struct solo_dev*) ; 
 int FUNC7 (struct solo_dev*) ; 
 int /*<<< orphan*/  SOLO_VE_ATTR ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  SOLO_VE_CFG0 ; 
 int /*<<< orphan*/  SOLO_VE_CFG1 ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  SOLO_VE_COMPT_MOT ; 
 int /*<<< orphan*/  SOLO_VE_ENCRYP_INIT ; 
 int /*<<< orphan*/  SOLO_VE_ENCRYP_POLY ; 
 int SOLO_VE_INSERT_INDEX ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int SOLO_VE_LITTLE_ENDIAN ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  SOLO_VE_VMRK_INIT_KEY ; 
 int /*<<< orphan*/  SOLO_VE_WMRK_ENABLE ; 
 int /*<<< orphan*/  SOLO_VE_WMRK_POLY ; 
 int /*<<< orphan*/  SOLO_VE_WMRK_STRL ; 
 int /*<<< orphan*/  FUNC18 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(struct solo_dev *solo_dev)
{
	int i;
	u32 cfg;

	FUNC18(solo_dev, SOLO_VE_CFG0,
		       FUNC14(IRQ_LEVEL) |
		       FUNC9(FUNC7(solo_dev) >> 16) |
		       FUNC8(FUNC6(solo_dev) >> 16));


	cfg = FUNC10(2) | SOLO_VE_INSERT_INDEX
		| FUNC16(0);
	if (solo_dev->type != SOLO_DEV_6010) {
		cfg |= FUNC17(
			(FUNC7(solo_dev) >> 24) & 0x0f);
		cfg |= FUNC15(
			(FUNC5(solo_dev) >> 24) & 0x0f);
	}
	FUNC18(solo_dev, SOLO_VE_CFG1, cfg);

	FUNC18(solo_dev, SOLO_VE_WMRK_POLY, 0);
	FUNC18(solo_dev, SOLO_VE_VMRK_INIT_KEY, 0);
	FUNC18(solo_dev, SOLO_VE_WMRK_STRL, 0);
	if (solo_dev->type == SOLO_DEV_6110)
		FUNC18(solo_dev, SOLO_VE_WMRK_ENABLE, 0);
	FUNC18(solo_dev, SOLO_VE_ENCRYP_POLY, 0);
	FUNC18(solo_dev, SOLO_VE_ENCRYP_INIT, 0);

	FUNC18(solo_dev, SOLO_VE_ATTR,
		       SOLO_VE_LITTLE_ENDIAN |
		       FUNC0(1) |
		       FUNC1(0) |
		       FUNC2(15) |
		       FUNC3(solo_dev->type == SOLO_DEV_6010 ? 9 : 10));

	for (i = 0; i < solo_dev->nr_chans; i++) {
		FUNC18(solo_dev, FUNC12(i),
			       (FUNC4(solo_dev) +
			       (i * SOLO_EREF_EXT_SIZE)) >> 16);
		FUNC18(solo_dev, FUNC13(i),
			       (FUNC4(solo_dev) +
			       ((i + 16) * SOLO_EREF_EXT_SIZE)) >> 16);
	}

	if (solo_dev->type == SOLO_DEV_6110) {
		FUNC18(solo_dev, SOLO_VE_COMPT_MOT, 0x00040008);
	} else {
		for (i = 0; i < solo_dev->nr_chans; i++)
			FUNC18(solo_dev, FUNC11(i), 0x100);
	}
}