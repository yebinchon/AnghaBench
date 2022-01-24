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
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct port_info {int /*<<< orphan*/  port_id; TYPE_1__ dcb; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int idx; int /*<<< orphan*/  protocolid; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ app_priority; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct dcb_peer_app_info {scalar_t__ error; scalar_t__ willing; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  pcmd ;

/* Variables and functions */
 int CXGB4_MAX_DCBX_APP_SUPPORTED ; 
 int FW_PORT_DCB_CFG_SUCCESS ; 
 int /*<<< orphan*/  FW_PORT_DCB_TYPE_APP_ID ; 
 int /*<<< orphan*/  FUNC0 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			     struct dcb_peer_app_info *info, u16 *app_count)
{
	struct fw_port_cmd pcmd;
	struct port_info *pi = FUNC3(dev);
	struct adapter *adap = pi->adapter;
	int i, err = 0;

	if (!FUNC1(pi->dcb.state))
		return 1;

	info->willing = 0;
	info->error = 0;

	*app_count = 0;
	for (i = 0; i < CXGB4_MAX_DCBX_APP_SUPPORTED; i++) {
		FUNC0(pcmd, pi->port_id);
		pcmd.u.dcb.app_priority.type = FW_PORT_DCB_TYPE_APP_ID;
		pcmd.u.dcb.app_priority.idx = *app_count;
		err = FUNC4(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);

		if (err != FW_PORT_DCB_CFG_SUCCESS) {
			FUNC2(adap->pdev_dev, "DCB app table read failed with %d\n",
				-err);
			return err;
		}

		/* find first empty slot */
		if (!pcmd.u.dcb.app_priority.protocolid)
			break;
	}
	*app_count = i;
	return err;
}