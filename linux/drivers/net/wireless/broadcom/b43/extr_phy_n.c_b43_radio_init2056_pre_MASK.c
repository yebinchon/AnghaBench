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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_RFCTL_CMD ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_CMD_CHIP0PU ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_CMD_OEPORFORCE ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	FUNC0(dev, B43_NPHY_RFCTL_CMD,
		     ~B43_NPHY_RFCTL_CMD_CHIP0PU);
	/* Maybe wl meant to reset and set (order?) RFCTL_CMD_OEPORFORCE? */
	FUNC0(dev, B43_NPHY_RFCTL_CMD,
		     B43_NPHY_RFCTL_CMD_OEPORFORCE);
	FUNC1(dev, B43_NPHY_RFCTL_CMD,
		    ~B43_NPHY_RFCTL_CMD_OEPORFORCE);
	FUNC1(dev, B43_NPHY_RFCTL_CMD,
		    B43_NPHY_RFCTL_CMD_CHIP0PU);
}