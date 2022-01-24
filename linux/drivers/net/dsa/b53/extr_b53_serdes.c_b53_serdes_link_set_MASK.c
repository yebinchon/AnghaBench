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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct b53_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 scalar_t__ B53_INVALID_LANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  SERDES_MII_BLK ; 
 scalar_t__ FUNC1 (struct b53_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct b53_device *dev, int port, unsigned int mode,
			 phy_interface_t interface, bool link_up)
{
	u8 lane = FUNC1(dev, port);
	u16 reg;

	if (lane == B53_INVALID_LANE)
		return;

	reg = FUNC2(dev, lane, FUNC0(MII_BMCR),
			      SERDES_MII_BLK);
	if (link_up)
		reg &= ~BMCR_PDOWN;
	else
		reg |= BMCR_PDOWN;
	FUNC3(dev, lane, FUNC0(MII_BMCR),
			 SERDES_MII_BLK, reg);
}