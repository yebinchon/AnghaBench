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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;

	FUNC2(phydev, 0x1f, 0x0007);
	FUNC2(phydev, 0x1e, 0x0020);
	FUNC1(phydev, 0x15, FUNC0(8));

	FUNC2(phydev, 0x1f, 0x0005);
	FUNC2(phydev, 0x05, 0x8b85);
	FUNC1(phydev, 0x06, FUNC0(13));

	FUNC2(phydev, 0x1f, 0x0000);
}