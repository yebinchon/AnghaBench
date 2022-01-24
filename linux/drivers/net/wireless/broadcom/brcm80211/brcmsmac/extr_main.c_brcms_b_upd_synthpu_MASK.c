#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {struct brcms_c_info* wlc; } ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_3__ {int /*<<< orphan*/  phyrev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  M_SYNTHPU_DLY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYNTHPU_DLY_BPHY_US ; 
 int /*<<< orphan*/  SYNTHPU_DLY_LPPHY_US ; 
 int /*<<< orphan*/  SYNTHPU_DLY_NPHY_US ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcms_hardware *wlc_hw)
{
	u16 v;
	struct brcms_c_info *wlc = wlc_hw->wlc;
	/* update SYNTHPU_DLY */

	if (FUNC0(wlc->band))
		v = SYNTHPU_DLY_LPPHY_US;
	else if (FUNC1(wlc->band) && (FUNC2(wlc->band->phyrev, 3)))
		v = SYNTHPU_DLY_NPHY_US;
	else
		v = SYNTHPU_DLY_BPHY_US;

	FUNC3(wlc_hw, M_SYNTHPU_DLY, v);
}