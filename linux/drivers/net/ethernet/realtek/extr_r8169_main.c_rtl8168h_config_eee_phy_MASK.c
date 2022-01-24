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
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;

	FUNC1(tp);

	FUNC0(phydev, 0xa4a, 0x11, 0x0000, 0x0200);
	FUNC0(phydev, 0xa42, 0x14, 0x0000, 0x0080);
}