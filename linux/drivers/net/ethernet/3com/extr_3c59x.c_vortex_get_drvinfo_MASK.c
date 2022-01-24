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
struct vortex_private {int /*<<< orphan*/  gendev; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 scalar_t__ FUNC0 (struct vortex_private*) ; 
 scalar_t__ FUNC1 (struct vortex_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vortex_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev,
					struct ethtool_drvinfo *info)
{
	struct vortex_private *vp = FUNC3(dev);

	FUNC6(info->driver, DRV_NAME, sizeof(info->driver));
	if (FUNC1(vp)) {
		FUNC6(info->bus_info, FUNC4(FUNC1(vp)),
			sizeof(info->bus_info));
	} else {
		if (FUNC0(vp))
			FUNC6(info->bus_info, FUNC2(vp->gendev),
				sizeof(info->bus_info));
		else
			FUNC5(info->bus_info, sizeof(info->bus_info),
				"EISA 0x%lx %d", dev->base_addr, dev->irq);
	}
}