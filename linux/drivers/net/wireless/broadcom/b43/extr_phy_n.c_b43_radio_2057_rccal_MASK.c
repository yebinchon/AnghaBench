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
typedef  int /*<<< orphan*/  u16 ;
struct b43_phy {int radio_rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R2057_RCCAL_DONE_OSCCAP ; 
 int /*<<< orphan*/  R2057_RCCAL_MASTER ; 
 int /*<<< orphan*/  R2057_RCCAL_START_R1_Q1_P1 ; 
 int /*<<< orphan*/  R2057_RCCAL_TRC0 ; 
 int /*<<< orphan*/  R2057_RCCAL_X1 ; 
 int /*<<< orphan*/  R2057v7_RCCAL_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static u16 FUNC7(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	bool special = (phy->radio_rev == 3 || phy->radio_rev == 4 ||
			phy->radio_rev == 6);
	u16 tmp;

	/* Setup cal */
	if (special) {
		FUNC3(dev, R2057_RCCAL_MASTER, 0x61);
		FUNC3(dev, R2057_RCCAL_TRC0, 0xC0);
	} else {
		FUNC3(dev, R2057v7_RCCAL_MASTER, 0x61);
		FUNC3(dev, R2057_RCCAL_TRC0, 0xE9);
	}
	FUNC3(dev, R2057_RCCAL_X1, 0x6E);

	/* Start, wait, stop */
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	if (!FUNC2(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
				  5000000))
		FUNC4(dev->wl, "Radio 0x2057 rccal timeout\n");
	FUNC6(35, 70);
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	FUNC6(70, 140);

	/* Setup cal */
	if (special) {
		FUNC3(dev, R2057_RCCAL_MASTER, 0x69);
		FUNC3(dev, R2057_RCCAL_TRC0, 0xB0);
	} else {
		FUNC3(dev, R2057v7_RCCAL_MASTER, 0x69);
		FUNC3(dev, R2057_RCCAL_TRC0, 0xD5);
	}
	FUNC3(dev, R2057_RCCAL_X1, 0x6E);

	/* Start, wait, stop */
	FUNC6(35, 70);
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	FUNC6(70, 140);
	if (!FUNC2(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
				  5000000))
		FUNC4(dev->wl, "Radio 0x2057 rccal timeout\n");
	FUNC6(35, 70);
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	FUNC6(70, 140);

	/* Setup cal */
	if (special) {
		FUNC3(dev, R2057_RCCAL_MASTER, 0x73);
		FUNC3(dev, R2057_RCCAL_X1, 0x28);
		FUNC3(dev, R2057_RCCAL_TRC0, 0xB0);
	} else {
		FUNC3(dev, R2057v7_RCCAL_MASTER, 0x73);
		FUNC3(dev, R2057_RCCAL_X1, 0x6E);
		FUNC3(dev, R2057_RCCAL_TRC0, 0x99);
	}

	/* Start, wait, stop */
	FUNC6(35, 70);
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	FUNC6(70, 140);
	if (!FUNC2(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
				  5000000)) {
		FUNC5(dev->wl, "Radio 0x2057 rcal timeout\n");
		return 0;
	}
	tmp = FUNC1(dev, R2057_RCCAL_DONE_OSCCAP);
	FUNC6(35, 70);
	FUNC3(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	FUNC6(70, 140);

	if (special)
		FUNC0(dev, R2057_RCCAL_MASTER, ~0x1);
	else
		FUNC0(dev, R2057v7_RCCAL_MASTER, ~0x1);

	return tmp;
}