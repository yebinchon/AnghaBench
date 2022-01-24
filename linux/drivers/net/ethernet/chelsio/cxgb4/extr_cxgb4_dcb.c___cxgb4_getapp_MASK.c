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
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct port_info {int /*<<< orphan*/  port_id; TYPE_1__ dcb; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int idx; scalar_t__ sel_field; int user_prio_map; int /*<<< orphan*/  protocolid; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ app_priority; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  pcmd ;

/* Variables and functions */
 int CXGB4_MAX_DCBX_APP_SUPPORTED ; 
 int EEXIST ; 
 int FW_PORT_DCB_CFG_SUCCESS ; 
 int /*<<< orphan*/  FW_PORT_DCB_TYPE_APP_ID ; 
 int /*<<< orphan*/  FUNC0 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct port_info* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, u8 app_idtype, u16 app_id,
			  int peer)
{
	struct port_info *pi = FUNC5(dev);
	struct adapter *adap = pi->adapter;
	int i;

	if (!FUNC3(pi->dcb.state))
		return 0;

	for (i = 0; i < CXGB4_MAX_DCBX_APP_SUPPORTED; i++) {
		struct fw_port_cmd pcmd;
		int err;

		if (peer)
			FUNC1(pcmd, pi->port_id);
		else
			FUNC0(pcmd, pi->port_id);

		pcmd.u.dcb.app_priority.type = FW_PORT_DCB_TYPE_APP_ID;
		pcmd.u.dcb.app_priority.idx = i;

		err = FUNC6(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
		if (err != FW_PORT_DCB_CFG_SUCCESS) {
			FUNC4(adap->pdev_dev, "DCB APP read failed with %d\n",
				-err);
			return err;
		}
		if (FUNC2(pcmd.u.dcb.app_priority.protocolid) == app_id)
			if (pcmd.u.dcb.app_priority.sel_field == app_idtype)
				return pcmd.u.dcb.app_priority.user_prio_map;

		/* exhausted app list */
		if (!pcmd.u.dcb.app_priority.protocolid)
			break;
	}

	return -EEXIST;
}