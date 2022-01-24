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
struct brcms_phy {scalar_t__* nphy_papd_tx_gain_at_last_cal; scalar_t__ nphy_force_papd_cal; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int) ; 
 scalar_t__ FUNC3 (struct brcms_phy*,int) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 

void FUNC5(struct brcms_phy *pi)
{
	if (FUNC0(pi)
	    && (pi->nphy_force_papd_cal
		|| (FUNC4(pi)
		    &&
		    (((u32)
		      FUNC1(FUNC3(pi, 0) -
			  pi->nphy_papd_tx_gain_at_last_cal[0]) >= 4)
		     || ((u32)
			 FUNC1(FUNC3(pi, 1) -
			     pi->nphy_papd_tx_gain_at_last_cal[1]) >= 4)))))
		FUNC2(pi, true);
}