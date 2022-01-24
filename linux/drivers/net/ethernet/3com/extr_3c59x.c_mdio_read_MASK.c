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
struct vortex_private {int /*<<< orphan*/  mii_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int MDIO_DATA_READ ; 
 int MDIO_DATA_WRITE0 ; 
 int MDIO_DATA_WRITE1 ; 
 int MDIO_ENB_IN ; 
 int MDIO_SHIFT_CLK ; 
 int /*<<< orphan*/  Wn4_PhysicalMgmt ; 
 int /*<<< orphan*/  FUNC0 (struct vortex_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct vortex_private*,int) ; 
 scalar_t__ mii_preamble_required ; 
 struct vortex_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vortex_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vortex_private*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int phy_id, int location)
{
	int i;
	struct vortex_private *vp = FUNC2(dev);
	int read_cmd = (0xf6 << 10) | (phy_id << 5) | location;
	unsigned int retval = 0;

	FUNC3(&vp->mii_lock);

	if (mii_preamble_required)
		FUNC1(vp, 32);

	/* Shift the read command bits out. */
	for (i = 14; i >= 0; i--) {
		int dataval = (read_cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
		FUNC6(vp, dataval, 4, Wn4_PhysicalMgmt);
		FUNC0(vp);
		FUNC6(vp, dataval | MDIO_SHIFT_CLK,
			       4, Wn4_PhysicalMgmt);
		FUNC0(vp);
	}
	/* Read the two transition, 16 data, and wire-idle bits. */
	for (i = 19; i > 0; i--) {
		FUNC6(vp, MDIO_ENB_IN, 4, Wn4_PhysicalMgmt);
		FUNC0(vp);
		retval = (retval << 1) |
			((FUNC5(vp, 4, Wn4_PhysicalMgmt) &
			  MDIO_DATA_READ) ? 1 : 0);
		FUNC6(vp, MDIO_ENB_IN | MDIO_SHIFT_CLK,
			       4, Wn4_PhysicalMgmt);
		FUNC0(vp);
	}

	FUNC4(&vp->mii_lock);

	return retval & 0x20000 ? 0xffff : retval>>1 & 0xffff;
}