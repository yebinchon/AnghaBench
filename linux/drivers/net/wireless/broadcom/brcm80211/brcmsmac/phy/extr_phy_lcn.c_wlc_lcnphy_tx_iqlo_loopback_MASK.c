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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RADIO_2064_REG005 ; 
 int /*<<< orphan*/  RADIO_2064_REG007 ; 
 int /*<<< orphan*/  RADIO_2064_REG00B ; 
 int /*<<< orphan*/  RADIO_2064_REG012 ; 
 int /*<<< orphan*/  RADIO_2064_REG025 ; 
 int /*<<< orphan*/  RADIO_2064_REG028 ; 
 int /*<<< orphan*/  RADIO_2064_REG036 ; 
 int /*<<< orphan*/  RADIO_2064_REG03A ; 
 int /*<<< orphan*/  RADIO_2064_REG059 ; 
 int /*<<< orphan*/  RADIO_2064_REG05C ; 
 int /*<<< orphan*/  RADIO_2064_REG078 ; 
 int /*<<< orphan*/  RADIO_2064_REG092 ; 
 int /*<<< orphan*/  RADIO_2064_REG0FC ; 
 int /*<<< orphan*/  RADIO_2064_REG0FD ; 
 int /*<<< orphan*/  RADIO_2064_REG0FF ; 
 int /*<<< orphan*/  RADIO_2064_REG112 ; 
 int /*<<< orphan*/  RADIO_2064_REG113 ; 
 int /*<<< orphan*/  RADIO_2064_REG11A ; 
 int /*<<< orphan*/  RADIO_2064_REG11F ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * iqlo_loopback_rf_regs ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct brcms_phy *pi, u16 *values_to_save)
{
	u16 vmid;
	int i;
	for (i = 0; i < 20; i++)
		values_to_save[i] =
			FUNC6(pi, iqlo_loopback_rf_regs[i]);

	FUNC3(pi, 0x44c, (0x1 << 12), 1 << 12);
	FUNC3(pi, 0x44d, (0x1 << 14), 1 << 14);

	FUNC3(pi, 0x44c, (0x1 << 11), 1 << 11);
	FUNC3(pi, 0x44d, (0x1 << 13), 0 << 13);

	FUNC3(pi, 0x43b, (0x1 << 1), 1 << 1);
	FUNC3(pi, 0x43c, (0x1 << 1), 0 << 1);

	FUNC3(pi, 0x43b, (0x1 << 0), 1 << 0);
	FUNC3(pi, 0x43c, (0x1 << 0), 0 << 0);

	if (FUNC1(pi->pubpi.phy_rev, 2))
		FUNC2(pi, RADIO_2064_REG03A, 0xFD);
	else
		FUNC2(pi, RADIO_2064_REG03A, 0xF9);
	FUNC5(pi, RADIO_2064_REG11A, 0x1);

	FUNC5(pi, RADIO_2064_REG036, 0x01);
	FUNC5(pi, RADIO_2064_REG11A, 0x18);
	FUNC7(20);

	if (FUNC1(pi->pubpi.phy_rev, 2)) {
		if (FUNC0(pi->radio_chanspec))
			FUNC4(pi, RADIO_2064_REG03A, 1, 0);
		else
			FUNC5(pi, RADIO_2064_REG03A, 1);
	} else {
		if (FUNC0(pi->radio_chanspec))
			FUNC4(pi, RADIO_2064_REG03A, 3, 1);
		else
			FUNC5(pi, RADIO_2064_REG03A, 0x3);
	}

	FUNC7(20);

	FUNC8(pi, RADIO_2064_REG025, 0xF);
	if (FUNC1(pi->pubpi.phy_rev, 2)) {
		if (FUNC0(pi->radio_chanspec))
			FUNC4(pi, RADIO_2064_REG028, 0xF, 0x4);
		else
			FUNC4(pi, RADIO_2064_REG028, 0xF, 0x6);
	} else {
		if (FUNC0(pi->radio_chanspec))
			FUNC4(pi, RADIO_2064_REG028, 0x1e, 0x4 << 1);
		else
			FUNC4(pi, RADIO_2064_REG028, 0x1e, 0x6 << 1);
	}

	FUNC7(20);

	FUNC8(pi, RADIO_2064_REG005, 0x8);
	FUNC5(pi, RADIO_2064_REG112, 0x80);
	FUNC7(20);

	FUNC5(pi, RADIO_2064_REG0FF, 0x10);
	FUNC5(pi, RADIO_2064_REG11F, 0x44);
	FUNC7(20);

	FUNC5(pi, RADIO_2064_REG00B, 0x7);
	FUNC5(pi, RADIO_2064_REG113, 0x10);
	FUNC7(20);

	FUNC8(pi, RADIO_2064_REG007, 0x1);
	FUNC7(20);

	vmid = 0x2A6;
	FUNC4(pi, RADIO_2064_REG0FC, 0x3 << 0, (vmid >> 8) & 0x3);
	FUNC8(pi, RADIO_2064_REG0FD, (vmid & 0xff));
	FUNC5(pi, RADIO_2064_REG11F, 0x44);
	FUNC7(20);

	FUNC5(pi, RADIO_2064_REG0FF, 0x10);
	FUNC7(20);
	FUNC8(pi, RADIO_2064_REG012, 0x02);
	FUNC5(pi, RADIO_2064_REG112, 0x06);
	FUNC8(pi, RADIO_2064_REG036, 0x11);
	FUNC8(pi, RADIO_2064_REG059, 0xcc);
	FUNC8(pi, RADIO_2064_REG05C, 0x2e);
	FUNC8(pi, RADIO_2064_REG078, 0xd7);
	FUNC8(pi, RADIO_2064_REG092, 0x15);
}