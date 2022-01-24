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
struct brcms_phy {int rfctrlIntc1_save; int rfctrlIntc2_save; int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 

void FUNC4(struct brcms_phy *pi, bool en)
{
	u16 rfctrlintc_override_val;

	if (!en) {

		pi->rfctrlIntc1_save = FUNC2(pi, 0x91);
		pi->rfctrlIntc2_save = FUNC2(pi, 0x92);

		if (FUNC1(pi->pubpi.phy_rev, 7))
			rfctrlintc_override_val = 0x1480;
		else if (FUNC1(pi->pubpi.phy_rev, 3))
			rfctrlintc_override_val =
				FUNC0(pi->radio_chanspec) ? 0x600 : 0x480;
		else
			rfctrlintc_override_val =
				FUNC0(pi->radio_chanspec) ? 0x180 : 0x120;

		FUNC3(pi, 0x91, rfctrlintc_override_val);
		FUNC3(pi, 0x92, rfctrlintc_override_val);
	} else {
		FUNC3(pi, 0x91, pi->rfctrlIntc1_save);
		FUNC3(pi, 0x92, pi->rfctrlIntc2_save);
	}

}