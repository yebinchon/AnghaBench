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
struct ofdpa_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  pport; int /*<<< orphan*/  internal_vlan_id; } ;
struct ofdpa_ctrl {int /*<<< orphan*/  copy_to_cpu; int /*<<< orphan*/  eth_dst_mask; int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_type; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ofdpa_port*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ofdpa_port *ofdpa_port, int flags,
				     const struct ofdpa_ctrl *ctrl, __be16 vlan_id)
{
	u32 in_pport_mask = 0xffffffff;
	__be16 vlan_id_mask = FUNC0(0xffff);
	int err;

	if (FUNC2(vlan_id) == 0)
		vlan_id = ofdpa_port->internal_vlan_id;

	err = FUNC3(ofdpa_port, ofdpa_port->pport, in_pport_mask,
				      ctrl->eth_type, ctrl->eth_dst,
				      ctrl->eth_dst_mask, vlan_id,
				      vlan_id_mask, ctrl->copy_to_cpu,
				      flags);

	if (err)
		FUNC1(ofdpa_port->dev, "Error (%d) ctrl term\n", err);

	return err;
}