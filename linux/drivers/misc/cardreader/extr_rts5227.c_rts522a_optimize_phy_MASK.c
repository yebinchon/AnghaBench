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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D3_DELINK_MODE_EN ; 
 int /*<<< orphan*/  IC_VER_A ; 
 int /*<<< orphan*/  PHY_FLD0 ; 
 int /*<<< orphan*/  PHY_FLD0_INIT_27S ; 
 int /*<<< orphan*/  PHY_FLD3 ; 
 int /*<<< orphan*/  PHY_FLD3_INIT_27S ; 
 int /*<<< orphan*/  PHY_FLD4 ; 
 int /*<<< orphan*/  PHY_FLD4_INIT_27S ; 
 int /*<<< orphan*/  PHY_RCR1 ; 
 int /*<<< orphan*/  PHY_RCR1_INIT_27S ; 
 int /*<<< orphan*/  PHY_RCR2 ; 
 int /*<<< orphan*/  PHY_RCR2_INIT_27S ; 
 int /*<<< orphan*/  RTS522A_PM_CTRL3 ; 
 scalar_t__ FUNC0 (struct rtsx_pcr*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_pcr *pcr)
{
	int err;

	err = FUNC2(pcr, RTS522A_PM_CTRL3, D3_DELINK_MODE_EN,
		0x00);
	if (err < 0)
		return err;

	if (FUNC0(pcr, 0x522A, IC_VER_A)) {
		err = FUNC1(pcr, PHY_RCR2,
			PHY_RCR2_INIT_27S);
		if (err)
			return err;

		FUNC1(pcr, PHY_RCR1, PHY_RCR1_INIT_27S);
		FUNC1(pcr, PHY_FLD0, PHY_FLD0_INIT_27S);
		FUNC1(pcr, PHY_FLD3, PHY_FLD3_INIT_27S);
		FUNC1(pcr, PHY_FLD4, PHY_FLD4_INIT_27S);
	}

	return 0;
}