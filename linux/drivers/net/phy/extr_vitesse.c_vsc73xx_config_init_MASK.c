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
 int MII_TPISTATUS ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int) ; 

__attribute__((used)) static void FUNC2(struct phy_device *phydev)
{
	/* Receiver init */
	FUNC1(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x0c, 0x0300, 0x0200);
	FUNC1(phydev, 0x1f, 0x0000);

	/* Config LEDs 0x61 */
	FUNC0(phydev, MII_TPISTATUS, 0xff00, 0x0061);
}