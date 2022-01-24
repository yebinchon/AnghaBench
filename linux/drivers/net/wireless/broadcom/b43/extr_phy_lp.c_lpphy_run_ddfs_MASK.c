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
 int /*<<< orphan*/  B43_LPPHY_AFE_DDFS ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_DDFS_INCR_INIT ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_DDFS_POINTER_INIT ; 
 int /*<<< orphan*/  B43_LPPHY_LP_PHY_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, int i_on, int q_on,
			   int incr1, int incr2, int scale_idx)
{
	FUNC3(dev);
	FUNC0(dev, B43_LPPHY_AFE_DDFS_POINTER_INIT, 0xFF80);
	FUNC0(dev, B43_LPPHY_AFE_DDFS_POINTER_INIT, 0x80FF);
	FUNC1(dev, B43_LPPHY_AFE_DDFS_INCR_INIT, 0xFF80, incr1);
	FUNC1(dev, B43_LPPHY_AFE_DDFS_INCR_INIT, 0x80FF, incr2 << 8);
	FUNC1(dev, B43_LPPHY_AFE_DDFS, 0xFFF7, i_on << 3);
	FUNC1(dev, B43_LPPHY_AFE_DDFS, 0xFFEF, q_on << 4);
	FUNC1(dev, B43_LPPHY_AFE_DDFS, 0xFF9F, scale_idx << 5);
	FUNC0(dev, B43_LPPHY_AFE_DDFS, 0xFFFB);
	FUNC2(dev, B43_LPPHY_AFE_DDFS, 0x2);
	FUNC2(dev, B43_LPPHY_LP_PHY_CTL, 0x20);
}