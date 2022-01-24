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
struct vortex_private {int info1; scalar_t__ partner_flow_ctrl; scalar_t__ flow_ctrl; scalar_t__ full_duplex; scalar_t__ large_frames; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  Wn3_MAC_Ctrl ; 
 struct vortex_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vortex_private*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
	struct vortex_private *vp = FUNC0(dev);

	FUNC1("%s:  setting %s-duplex.\n",
		dev->name, (vp->full_duplex) ? "full" : "half");

	/* Set the full-duplex bit. */
	FUNC2(vp,
		       ((vp->info1 & 0x8000) || vp->full_duplex ? 0x20 : 0) |
		       (vp->large_frames ? 0x40 : 0) |
		       ((vp->full_duplex && vp->flow_ctrl && vp->partner_flow_ctrl) ?
			0x100 : 0),
		       3, Wn3_MAC_Ctrl);
}