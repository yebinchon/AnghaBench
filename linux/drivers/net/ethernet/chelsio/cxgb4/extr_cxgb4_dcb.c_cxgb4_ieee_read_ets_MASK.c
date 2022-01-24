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
typedef  int uint32_t ;
struct port_dcb_info {int msgs; int /*<<< orphan*/  pg_num_tcs_supported; } ;
struct port_info {int /*<<< orphan*/  port_id; struct adapter* adapter; struct port_dcb_info dcb; } ;
struct net_device {int dummy; } ;
struct ieee_ets {int willing; int* prio_tc; int /*<<< orphan*/ * tc_tsa; int /*<<< orphan*/ * tc_tx_bw; int /*<<< orphan*/ * tc_rx_bw; int /*<<< orphan*/  ets_cap; } ;
struct TYPE_6__ {int /*<<< orphan*/ * tsa; int /*<<< orphan*/ * pgrate; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  pgid; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ pgrate; TYPE_1__ pgid; } ;
struct TYPE_8__ {TYPE_3__ dcb; } ;
struct fw_port_cmd {TYPE_4__ u; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  pcmd ;

/* Variables and functions */
 int CXGB4_DCB_FW_PGID ; 
 int CXGB4_DCB_FW_PGRATE ; 
 int FW_PORT_DCB_CFG_SUCCESS ; 
 int /*<<< orphan*/  FW_PORT_DCB_TYPE_PGID ; 
 int /*<<< orphan*/  FW_PORT_DCB_TYPE_PGRATE ; 
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  FUNC0 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_port_cmd,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ieee_ets *ets,
			       int local)
{
	struct port_info *pi = FUNC4(dev);
	struct port_dcb_info *dcb = &pi->dcb;
	struct adapter *adap = pi->adapter;
	uint32_t tc_info;
	struct fw_port_cmd pcmd;
	int i, bwg, err;

	if (!(dcb->msgs & (CXGB4_DCB_FW_PGID | CXGB4_DCB_FW_PGRATE)))
		return 0;

	ets->ets_cap =  dcb->pg_num_tcs_supported;

	if (local) {
		ets->willing = 1;
		FUNC0(pcmd, pi->port_id);
	} else {
		FUNC1(pcmd, pi->port_id);
	}

	pcmd.u.dcb.pgid.type = FW_PORT_DCB_TYPE_PGID;
	err = FUNC5(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
	if (err != FW_PORT_DCB_CFG_SUCCESS) {
		FUNC3(adap->pdev_dev, "DCB read PGID failed with %d\n", -err);
		return err;
	}

	tc_info = FUNC2(pcmd.u.dcb.pgid.pgid);

	if (local)
		FUNC0(pcmd, pi->port_id);
	else
		FUNC1(pcmd, pi->port_id);

	pcmd.u.dcb.pgrate.type = FW_PORT_DCB_TYPE_PGRATE;
	err = FUNC5(adap, adap->mbox, &pcmd, sizeof(pcmd), &pcmd);
	if (err != FW_PORT_DCB_CFG_SUCCESS) {
		FUNC3(adap->pdev_dev, "DCB read PGRATE failed with %d\n",
			-err);
		return err;
	}

	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		bwg = (tc_info >> ((7 - i) * 4)) & 0xF;
		ets->prio_tc[i] = bwg;
		ets->tc_tx_bw[i] = pcmd.u.dcb.pgrate.pgrate[i];
		ets->tc_rx_bw[i] = ets->tc_tx_bw[i];
		ets->tc_tsa[i] = pcmd.u.dcb.pgrate.tsa[i];
	}

	return 0;
}