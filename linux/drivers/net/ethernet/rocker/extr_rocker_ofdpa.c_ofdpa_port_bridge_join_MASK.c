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
struct ofdpa_port {struct net_device* bridge_dev; int /*<<< orphan*/  internal_vlan_id; TYPE_1__* dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFDPA_UNTAGGED_VID ; 
 int /*<<< orphan*/  FUNC0 (struct ofdpa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ofdpa_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ofdpa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ofdpa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ofdpa_port *ofdpa_port,
				  struct net_device *bridge)
{
	int err;

	/* Port is joining bridge, so the internal VLAN for the
	 * port is going to change to the bridge internal VLAN.
	 * Let's remove untagged VLAN (vid=0) from port and
	 * re-add once internal VLAN has changed.
	 */

	err = FUNC3(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
	if (err)
		return err;

	FUNC1(ofdpa_port,
					ofdpa_port->dev->ifindex);
	ofdpa_port->internal_vlan_id =
		FUNC0(ofdpa_port, bridge->ifindex);

	ofdpa_port->bridge_dev = bridge;

	return FUNC2(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
}