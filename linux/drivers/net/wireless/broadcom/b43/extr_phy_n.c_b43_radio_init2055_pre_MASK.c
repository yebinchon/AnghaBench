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
 int B43_NPHY_RFCTL_CMD_CHIP0PU ; 
 int B43_NPHY_RFCTL_CMD_OEPORFORCE ; 
 int B43_NPHY_RFCTL_CMD_PORFORCE ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	FUNC0(dev, B43_NPHY_RFCTL_CMD,
		     ~B43_NPHY_RFCTL_CMD_PORFORCE);
	FUNC1(dev, B43_NPHY_RFCTL_CMD,
		    B43_NPHY_RFCTL_CMD_CHIP0PU |
		    B43_NPHY_RFCTL_CMD_OEPORFORCE);
	FUNC1(dev, B43_NPHY_RFCTL_CMD,
		    B43_NPHY_RFCTL_CMD_PORFORCE);
}