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
typedef  int u16 ;
struct ofdpa_port {int /*<<< orphan*/  vlan_bitmap; } ;
struct ofdpa_ctrl {int dummy; } ;

/* Variables and functions */
 int VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ofdpa_port *ofdpa_port, int flags,
			   const struct ofdpa_ctrl *ctrl)
{
	u16 vid;
	int err = 0;

	for (vid = 1; vid < VLAN_N_VID; vid++) {
		if (!FUNC2(vid, ofdpa_port->vlan_bitmap))
			continue;
		err = FUNC1(ofdpa_port, flags,
					   ctrl, FUNC0(vid));
		if (err)
			break;
	}

	return err;
}