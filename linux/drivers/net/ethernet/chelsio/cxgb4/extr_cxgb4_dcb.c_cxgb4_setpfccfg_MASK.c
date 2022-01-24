#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ state; int pfcen; } ;
struct port_info {TYPE_1__ dcb; int /*<<< orphan*/  port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int pfcen; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ pfc; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; int /*<<< orphan*/  op_to_portid; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  pcmd ;

/* Variables and functions */
 scalar_t__ CXGB4_DCB_STATE_HOST ; 
 int CXGB4_MAX_PRIORITY ; 
 int /*<<< orphan*/  FW_PORT_CMD_APPLY_F ; 
 int FW_PORT_DCB_CFG_SUCCESS ; 
 int /*<<< orphan*/  FW_PORT_DCB_TYPE_PFC ; 
 int /*<<< orphan*/  FUNC0 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int priority, u8 pfccfg)
{
	struct fw_port_cmd pcmd;
	struct port_info *pi = FUNC4(dev);
	struct adapter *adap = pi->adapter;
	int err;

	if (!FUNC2(pi->dcb.state) ||
	    priority >= CXGB4_MAX_PRIORITY)
		return;

	FUNC0(pcmd, pi->port_id);
	if (pi->dcb.state == CXGB4_DCB_STATE_HOST)
		pcmd.op_to_portid |= FUNC1(FW_PORT_CMD_APPLY_F);

	pcmd.u.dcb.pfc.type = FW_PORT_DCB_TYPE_PFC;
	pcmd.u.dcb.pfc.pfcen = pi->dcb.pfcen;

	if (pfccfg)
		pcmd.u.dcb.pfc.pfcen |= (1 << (7 - priority));
	else
		pcmd.u.dcb.pfc.pfcen &= (~(1 << (7 - priority)));

	err = FUNC5(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
	if (err != FW_PORT_DCB_CFG_SUCCESS) {
		FUNC3(adap->pdev_dev, "DCB PFC write failed with %d\n", -err);
		return;
	}

	pi->dcb.pfcen = pcmd.u.dcb.pfc.pfcen;
}