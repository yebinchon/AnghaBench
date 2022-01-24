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
typedef  int u8 ;
struct rtsx_ucr {scalar_t__ is_rts5179; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DMA1_CTL ; 
 int /*<<< orphan*/  CARD_DRIVE_SEL ; 
 int /*<<< orphan*/  CARD_INT_PEND ; 
 int /*<<< orphan*/  CARD_PULL_CTL1 ; 
 int /*<<< orphan*/  CARD_PULL_CTL5 ; 
 int /*<<< orphan*/  CARD_PULL_CTL6 ; 
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int /*<<< orphan*/  CD_DEGLITCH_EN ; 
 int /*<<< orphan*/  CD_DEGLITCH_WIDTH ; 
 int /*<<< orphan*/  CFG_MODE ; 
 scalar_t__ FUNC0 (struct rtsx_ucr*,int /*<<< orphan*/ ) ; 
 int CLK_MODE_MASK ; 
 int CLK_MODE_NON_XTAL ; 
 int DRIVER_TYPE_D ; 
 int EXTEND_DMA1_ASYNC_SIGNAL ; 
 int FORCE_LDO_POWERB ; 
 int LDO3318_PWR_MASK ; 
 int /*<<< orphan*/  LDO_POWER_CFG ; 
 int LDO_SUSPEND ; 
 int /*<<< orphan*/  LQFP48 ; 
 int /*<<< orphan*/  MODE_C ; 
 int MS_INT ; 
 int NYET_EN ; 
 int NYET_MSAK ; 
 int SD20_DRIVE_MASK ; 
 int SD30_DRIVE_MASK ; 
 int /*<<< orphan*/  SD30_DRIVE_SEL ; 
 int SD_INT ; 
 int /*<<< orphan*/  SYS_DUMMY0 ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int XD_CD_DEGLITCH_EN ; 
 int XD_INT ; 
 int XTAL_FREE ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_ucr*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct rtsx_ucr*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct rtsx_ucr*,int,int) ; 

__attribute__((used)) static int FUNC6(struct rtsx_ucr *ucr)
{
	int ret;
	u8 val;

	FUNC2(ucr);

	if (FUNC0(ucr, LQFP48)) {
		FUNC1(ucr, WRITE_REG_CMD, CARD_PWR_CTL,
				LDO3318_PWR_MASK, LDO_SUSPEND);
		FUNC1(ucr, WRITE_REG_CMD, CARD_PWR_CTL,
				FORCE_LDO_POWERB, FORCE_LDO_POWERB);
		FUNC1(ucr, WRITE_REG_CMD, CARD_PULL_CTL1,
				0x30, 0x10);
		FUNC1(ucr, WRITE_REG_CMD, CARD_PULL_CTL5,
				0x03, 0x01);
		FUNC1(ucr, WRITE_REG_CMD, CARD_PULL_CTL6,
				0x0C, 0x04);
	}

	FUNC1(ucr, WRITE_REG_CMD, SYS_DUMMY0, NYET_MSAK, NYET_EN);
	FUNC1(ucr, WRITE_REG_CMD, CD_DEGLITCH_WIDTH, 0xFF, 0x08);
	FUNC1(ucr, WRITE_REG_CMD,
			CD_DEGLITCH_EN, XD_CD_DEGLITCH_EN, 0x0);
	FUNC1(ucr, WRITE_REG_CMD, SD30_DRIVE_SEL,
			SD30_DRIVE_MASK, DRIVER_TYPE_D);
	FUNC1(ucr, WRITE_REG_CMD,
			CARD_DRIVE_SEL, SD20_DRIVE_MASK, 0x0);
	FUNC1(ucr, WRITE_REG_CMD, LDO_POWER_CFG, 0xE0, 0x0);

	if (ucr->is_rts5179)
		FUNC1(ucr, WRITE_REG_CMD,
				CARD_PULL_CTL5, 0x03, 0x01);

	FUNC1(ucr, WRITE_REG_CMD, CARD_DMA1_CTL,
		       EXTEND_DMA1_ASYNC_SIGNAL, EXTEND_DMA1_ASYNC_SIGNAL);
	FUNC1(ucr, WRITE_REG_CMD, CARD_INT_PEND,
			XD_INT | MS_INT | SD_INT,
			XD_INT | MS_INT | SD_INT);

	ret = FUNC4(ucr, MODE_C, 100);
	if (ret)
		return ret;

	/* config non-crystal mode */
	FUNC3(ucr, CFG_MODE, &val);
	if ((val & XTAL_FREE) || ((val & CLK_MODE_MASK) == CLK_MODE_NON_XTAL)) {
		ret = FUNC5(ucr, 0xC2, 0x7C);
		if (ret)
			return ret;
	}

	return 0;
}