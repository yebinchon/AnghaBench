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
 int /*<<< orphan*/  ALL_FALLBACK_ON ; 
 int /*<<< orphan*/  hdx_loopback_off ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	FUNC2(phydev, ALL_FALLBACK_ON);
	/* In the latest MAC or switches design, the 10 Mbps loopback
	   is desired to be turned off. */
	FUNC0(phydev, hdx_loopback_off);
	return FUNC1(phydev);
}