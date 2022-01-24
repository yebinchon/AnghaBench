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
struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int,int) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;

	FUNC2(phydev, 0x0bcc, 0x14, FUNC0(8), 0);
	FUNC2(phydev, 0x0a44, 0x11, 0, FUNC0(7) | FUNC0(6));
	FUNC4(phydev, 0x1f, 0x0a43);
	FUNC4(phydev, 0x13, 0x8084);
	FUNC1(phydev, 0x14, FUNC0(14) | FUNC0(13));
	FUNC3(phydev, 0x10, FUNC0(12) | FUNC0(1) | FUNC0(0));

	FUNC4(phydev, 0x1f, 0x0000);
}