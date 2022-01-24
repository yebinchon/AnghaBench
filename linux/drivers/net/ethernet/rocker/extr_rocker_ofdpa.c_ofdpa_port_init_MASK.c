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
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int brport_flags; TYPE_1__* dev; int /*<<< orphan*/  internal_vlan_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int BR_LEARNING ; 
 int /*<<< orphan*/  OFDPA_OP_FLAG_REMOVE ; 
 int /*<<< orphan*/  OFDPA_UNTAGGED_VID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (struct ofdpa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_port*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ofdpa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_port*,int) ; 

__attribute__((used)) static int FUNC5(struct rocker_port *rocker_port)
{
	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
	int err;

	FUNC4(rocker_port,
				 !!(ofdpa_port->brport_flags & BR_LEARNING));

	err = FUNC1(ofdpa_port, 0);
	if (err) {
		FUNC0(ofdpa_port->dev, "install ig port table failed\n");
		return err;
	}

	ofdpa_port->internal_vlan_id =
		FUNC2(ofdpa_port,
						ofdpa_port->dev->ifindex);

	err = FUNC3(ofdpa_port, OFDPA_UNTAGGED_VID, 0);
	if (err) {
		FUNC0(ofdpa_port->dev, "install untagged VLAN failed\n");
		goto err_untagged_vlan;
	}
	return 0;

err_untagged_vlan:
	FUNC1(ofdpa_port, OFDPA_OP_FLAG_REMOVE);
	return err;
}