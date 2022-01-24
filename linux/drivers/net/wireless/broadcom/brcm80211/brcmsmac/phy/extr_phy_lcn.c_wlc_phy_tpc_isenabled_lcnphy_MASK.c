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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ LCNPHY_TX_PWR_CTRL_HW ; 
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 

bool FUNC2(struct brcms_phy *pi)
{
	if (FUNC1(pi))
		return false;
	else
		return (LCNPHY_TX_PWR_CTRL_HW ==
			FUNC0((pi)));
}