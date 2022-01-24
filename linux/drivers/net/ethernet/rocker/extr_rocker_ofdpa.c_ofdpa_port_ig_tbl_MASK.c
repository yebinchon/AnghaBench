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
typedef  int u32 ;
struct ofdpa_port {int /*<<< orphan*/  dev; } ;
typedef  enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;

/* Variables and functions */
 int ROCKER_OF_DPA_TABLE_ID_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ofdpa_port*,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct ofdpa_port *ofdpa_port, int flags)
{
	enum rocker_of_dpa_table_id goto_tbl;
	u32 in_pport;
	u32 in_pport_mask;
	int err;

	/* Normal Ethernet Frames.  Matches pkts from any local physical
	 * ports.  Goto VLAN tbl.
	 */

	in_pport = 0;
	in_pport_mask = 0xffff0000;
	goto_tbl = ROCKER_OF_DPA_TABLE_ID_VLAN;

	err = FUNC1(ofdpa_port, flags,
				     in_pport, in_pport_mask,
				     goto_tbl);
	if (err)
		FUNC0(ofdpa_port->dev, "Error (%d) ingress port table entry\n", err);

	return err;
}