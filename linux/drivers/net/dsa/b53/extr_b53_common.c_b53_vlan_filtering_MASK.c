#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int /*<<< orphan*/  vlan_enabled; TYPE_1__* ports; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_VLAN_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC5(struct dsa_switch *ds, int port, bool vlan_filtering)
{
	struct b53_device *dev = ds->priv;
	u16 pvid, new_pvid;

	FUNC3(dev, B53_VLAN_PAGE, FUNC0(port), &pvid);
	new_pvid = pvid;
	if (!vlan_filtering) {
		/* Filtering is currently enabled, use the default PVID since
		 * the bridge does not expect tagging anymore
		 */
		dev->ports[port].pvid = pvid;
		new_pvid = FUNC1(dev);
	} else {
		/* Filtering is currently disabled, restore the previous PVID */
		new_pvid = dev->ports[port].pvid;
	}

	if (pvid != new_pvid)
		FUNC4(dev, B53_VLAN_PAGE, FUNC0(port),
			    new_pvid);

	FUNC2(dev, dev->vlan_enabled, vlan_filtering);

	return 0;
}