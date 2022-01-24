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
struct gbe_priv {scalar_t__ ale_ports; int /*<<< orphan*/  ale; } ;
struct gbe_intf {int /*<<< orphan*/  active_vlans; struct gbe_priv* gbe_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GBE_MASK_NO_PORTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *intf_priv, int vid)
{
	struct gbe_intf *gbe_intf = intf_priv;
	struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

	FUNC2(vid, gbe_intf->active_vlans);

	FUNC1(gbe_dev->ale, vid,
			  FUNC0(gbe_dev->ale_ports),
			  GBE_MASK_NO_PORTS,
			  FUNC0(gbe_dev->ale_ports),
			  FUNC0(gbe_dev->ale_ports - 1));

	return 0;
}