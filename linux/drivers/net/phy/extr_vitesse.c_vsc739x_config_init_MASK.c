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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	/* This magic sequence appears in the VSC7395 SparX-G5e application
	 * note "VSC7395/VSC7398 PHY Configuration"
	 *
	 * Maybe one day we will get to know what it all means.
	 */
	FUNC1(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x08, 0x0200, 0x0200);
	FUNC1(phydev, 0x1f, 0x52b5);
	FUNC1(phydev, 0x10, 0xb68a);
	FUNC0(phydev, 0x12, 0xff07, 0x0003);
	FUNC0(phydev, 0x11, 0x00ff, 0x00a2);
	FUNC1(phydev, 0x10, 0x968a);
	FUNC1(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x08, 0x0200, 0x0000);
	FUNC1(phydev, 0x1f, 0x0000);

	FUNC1(phydev, 0x1f, 0x0000);
	FUNC1(phydev, 0x12, 0x0048);
	FUNC1(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x16, 0x0fc0, 0x0240);
	FUNC0(phydev, 0x14, 0x6000, 0x4000);
	FUNC1(phydev, 0x1f, 0x0001);
	FUNC0(phydev, 0x14, 0xe000, 0x6000);
	FUNC1(phydev, 0x1f, 0x0000);

	FUNC2(phydev);

	return 0;
}