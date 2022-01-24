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
 int /*<<< orphan*/  B43_LPPHY_PS_CTL_OVERRIDE_VAL0 ; 
 int /*<<< orphan*/  B43_LPPHY_PS_CTL_OVERRIDE_VAL1 ; 
 int /*<<< orphan*/  B43_LPPHY_PS_CTL_OVERRIDE_VAL2 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev, bool user)
{
	FUNC3(dev, user);
	FUNC4(dev, false, true);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFB);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x4);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFF7);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x8);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x10);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x10);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFDF);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x20);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFBF);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x40);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0x7);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0x38);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xFF3F);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0x100);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xFDFF);
	FUNC2(dev, B43_LPPHY_PS_CTL_OVERRIDE_VAL0, 0);
	FUNC2(dev, B43_LPPHY_PS_CTL_OVERRIDE_VAL1, 1);
	FUNC2(dev, B43_LPPHY_PS_CTL_OVERRIDE_VAL2, 0x20);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xFBFF);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xF7FF);
	FUNC2(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, 0);
	FUNC2(dev, B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, 0x45AF);
	FUNC2(dev, B43_LPPHY_RF_OVERRIDE_2, 0x3FF);
}