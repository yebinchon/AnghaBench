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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi)
{
	u8 dflt_rc_cal_val;
	u16 flt_val;

	dflt_rc_cal_val = 7;
	if (FUNC0(pi->pubpi.phy_rev, 1))
		dflt_rc_cal_val = 11;
	flt_val =
		(dflt_rc_cal_val << 10) | (dflt_rc_cal_val << 5) |
		(dflt_rc_cal_val);
	FUNC1(pi, 0x933, flt_val);
	FUNC1(pi, 0x934, flt_val);
	FUNC1(pi, 0x935, flt_val);
	FUNC1(pi, 0x936, flt_val);
	FUNC1(pi, 0x937, (flt_val & 0x1FF));

	return;
}