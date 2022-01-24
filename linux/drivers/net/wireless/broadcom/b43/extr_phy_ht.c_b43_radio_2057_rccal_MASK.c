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
typedef  int u16 ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  R2059_RCCAL_DONE_OSCCAP ; 
 int /*<<< orphan*/  R2059_RCCAL_MASTER ; 
 int /*<<< orphan*/  R2059_RCCAL_START_R1_Q1_P1 ; 
 int /*<<< orphan*/  R2059_RCCAL_TRC0 ; 
 int /*<<< orphan*/  R2059_RCCAL_X1 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	static const u16 radio_values[3][2] = {
		{ 0x61, 0xE9 }, { 0x69, 0xD5 }, { 0x73, 0x99 },
	};
	int i;

	for (i = 0; i < 3; i++) {
		FUNC2(dev, R2059_RCCAL_MASTER, radio_values[i][0]);
		FUNC2(dev, R2059_RCCAL_X1, 0x6E);
		FUNC2(dev, R2059_RCCAL_TRC0, radio_values[i][1]);

		/* Start */
		FUNC2(dev, R2059_RCCAL_START_R1_Q1_P1, 0x55);

		/* Wait */
		if (!FUNC1(dev, R2059_RCCAL_DONE_OSCCAP, 2, 2,
					  500, 5000000))
			FUNC3(dev->wl, "Radio 0x2059 rccal timeout\n");

		/* Stop */
		FUNC2(dev, R2059_RCCAL_START_R1_Q1_P1, 0x15);
	}

	FUNC0(dev, R2059_RCCAL_MASTER, ~0x1);
}