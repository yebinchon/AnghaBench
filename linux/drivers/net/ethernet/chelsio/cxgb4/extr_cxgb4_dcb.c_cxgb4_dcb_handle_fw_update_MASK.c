#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fw_port_app_priority {int idx; int /*<<< orphan*/  protocolid; int /*<<< orphan*/  sel_field; int /*<<< orphan*/  user_prio_map; } ;
struct TYPE_12__ {int /*<<< orphan*/  max_pfc_tcs; int /*<<< orphan*/  pfcen; } ;
struct TYPE_11__ {int /*<<< orphan*/  strict_priorate; } ;
struct TYPE_10__ {int /*<<< orphan*/  tsa; int /*<<< orphan*/  pgrate; int /*<<< orphan*/  num_tcs_supported; } ;
struct TYPE_9__ {int type; int /*<<< orphan*/  pgid; } ;
struct TYPE_7__ {int all_syncd_pkd; int /*<<< orphan*/  dcb_version_to_app_state; } ;
union fw_port_dcb {struct fw_port_app_priority app_priority; TYPE_6__ pfc; TYPE_5__ priorate; TYPE_4__ pgrate; TYPE_3__ pgid; TYPE_1__ control; } ;
struct port_dcb_info {int dcb_version; scalar_t__ state; int msgs; struct app_priority* app_priority; int /*<<< orphan*/  pfc_num_tcs_supported; int /*<<< orphan*/  pfcen; int /*<<< orphan*/  priorate; int /*<<< orphan*/  tsa; int /*<<< orphan*/  pgrate; int /*<<< orphan*/  pg_num_tcs_supported; int /*<<< orphan*/  pgid; } ;
struct port_info {struct port_dcb_info dcb; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {union fw_port_dcb dcb; } ;
struct fw_port_cmd {TYPE_2__ u; int /*<<< orphan*/  op_to_portid; } ;
struct dcb_app {int selector; int /*<<< orphan*/  priority; int /*<<< orphan*/  protocol; } ;
struct app_priority {int /*<<< orphan*/  protocolid; int /*<<< orphan*/  sel_field; int /*<<< orphan*/  user_prio_map; } ;
struct adapter {size_t* chan_map; int /*<<< orphan*/  pdev_dev; struct net_device** port; } ;
typedef  enum cxgb4_dcb_state_input { ____Placeholder_cxgb4_dcb_state_input } cxgb4_dcb_state_input ;

/* Variables and functions */
 int CXGB4_DCB_FW_APP_ID ; 
 int CXGB4_DCB_FW_PFC ; 
 int CXGB4_DCB_FW_PGID ; 
 int CXGB4_DCB_FW_PGRATE ; 
 int CXGB4_DCB_FW_PRIORATE ; 
 int CXGB4_DCB_INPUT_FW_ALLSYNCED ; 
 int CXGB4_DCB_INPUT_FW_INCOMPLETE ; 
 scalar_t__ CXGB4_DCB_STATE_HOST ; 
 scalar_t__ CXGB4_DCB_STATE_START ; 
 int FW_PORT_CMD_ALL_SYNCD_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  FW_PORT_DCB_TYPE_APP_ID 132 
 int FW_PORT_DCB_TYPE_CONTROL ; 
#define  FW_PORT_DCB_TYPE_PFC 131 
#define  FW_PORT_DCB_TYPE_PGID 130 
#define  FW_PORT_DCB_TYPE_PGRATE 129 
#define  FW_PORT_DCB_TYPE_PRIORATE 128 
 int FW_PORT_DCB_VER_CEE1D01 ; 
 int FW_PORT_DCB_VER_IEEE ; 
 int FW_PORT_DCB_VER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct port_dcb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int FUNC6 (struct net_device*,struct dcb_app*) ; 
 int FUNC7 (struct net_device*,struct dcb_app*) ; 
 int /*<<< orphan*/ * dcb_ver_array ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct port_info* FUNC12 (struct net_device*) ; 

void FUNC13(struct adapter *adap,
				const struct fw_port_cmd *pcmd)
{
	const union fw_port_dcb *fwdcb = &pcmd->u.dcb;
	int port = FUNC1(FUNC4(pcmd->op_to_portid));
	struct net_device *dev = adap->port[adap->chan_map[port]];
	struct port_info *pi = FUNC12(dev);
	struct port_dcb_info *dcb = &pi->dcb;
	int dcb_type = pcmd->u.dcb.pgid.type;
	int dcb_running_version;

	/* Handle Firmware DCB Control messages separately since they drive
	 * our state machine.
	 */
	if (dcb_type == FW_PORT_DCB_TYPE_CONTROL) {
		enum cxgb4_dcb_state_input input =
			((pcmd->u.dcb.control.all_syncd_pkd &
			  FW_PORT_CMD_ALL_SYNCD_F)
			 ? CXGB4_DCB_INPUT_FW_ALLSYNCED
			 : CXGB4_DCB_INPUT_FW_INCOMPLETE);

		if (dcb->dcb_version != FW_PORT_DCB_VER_UNKNOWN) {
			dcb_running_version = FUNC0(
				FUNC3(
				pcmd->u.dcb.control.dcb_version_to_app_state));
			if (dcb_running_version == FW_PORT_DCB_VER_CEE1D01 ||
			    dcb_running_version == FW_PORT_DCB_VER_IEEE) {
				dcb->dcb_version = dcb_running_version;
				FUNC9(adap->pdev_dev, "Interface %s is running %s\n",
					 dev->name,
					 dcb_ver_array[dcb->dcb_version]);
			} else {
				FUNC9(adap->pdev_dev,
					 "Something screwed up, requested firmware for %s, but firmware returned %s instead\n",
					 dcb_ver_array[dcb->dcb_version],
					 dcb_ver_array[dcb_running_version]);
				dcb->dcb_version = FW_PORT_DCB_VER_UNKNOWN;
			}
		}

		FUNC5(dev, input);
		return;
	}

	/* It's weird, and almost certainly an error, to get Firmware DCB
	 * messages when we either haven't been told whether we're going to be
	 * doing Host or Firmware DCB; and even worse when we've been told
	 * that we're doing Host DCB!
	 */
	if (dcb->state == CXGB4_DCB_STATE_START ||
	    dcb->state == CXGB4_DCB_STATE_HOST) {
		FUNC8(adap->pdev_dev, "Receiving Firmware DCB messages in State %d\n",
			dcb->state);
		return;
	}

	/* Now handle the general Firmware DCB update messages ...
	 */
	switch (dcb_type) {
	case FW_PORT_DCB_TYPE_PGID:
		dcb->pgid = FUNC4(fwdcb->pgid.pgid);
		dcb->msgs |= CXGB4_DCB_FW_PGID;
		break;

	case FW_PORT_DCB_TYPE_PGRATE:
		dcb->pg_num_tcs_supported = fwdcb->pgrate.num_tcs_supported;
		FUNC11(dcb->pgrate, &fwdcb->pgrate.pgrate,
		       sizeof(dcb->pgrate));
		FUNC11(dcb->tsa, &fwdcb->pgrate.tsa,
		       sizeof(dcb->tsa));
		dcb->msgs |= CXGB4_DCB_FW_PGRATE;
		if (dcb->msgs & CXGB4_DCB_FW_PGID)
			FUNC2(dev, dcb);
		break;

	case FW_PORT_DCB_TYPE_PRIORATE:
		FUNC11(dcb->priorate, &fwdcb->priorate.strict_priorate,
		       sizeof(dcb->priorate));
		dcb->msgs |= CXGB4_DCB_FW_PRIORATE;
		break;

	case FW_PORT_DCB_TYPE_PFC:
		dcb->pfcen = fwdcb->pfc.pfcen;
		dcb->pfc_num_tcs_supported = fwdcb->pfc.max_pfc_tcs;
		dcb->msgs |= CXGB4_DCB_FW_PFC;
		FUNC2(dev, dcb);
		break;

	case FW_PORT_DCB_TYPE_APP_ID: {
		const struct fw_port_app_priority *fwap = &fwdcb->app_priority;
		int idx = fwap->idx;
		struct app_priority *ap = &dcb->app_priority[idx];

		struct dcb_app app = {
			.protocol = FUNC3(fwap->protocolid),
		};
		int err;

		/* Convert from firmware format to relevant format
		 * when using app selector
		 */
		if (dcb->dcb_version == FW_PORT_DCB_VER_IEEE) {
			app.selector = (fwap->sel_field + 1);
			app.priority = FUNC10(fwap->user_prio_map) - 1;
			err = FUNC6(dev, &app);
			FUNC2(dev, dcb);
		} else {
			/* Default is CEE */
			app.selector = !!(fwap->sel_field);
			app.priority = fwap->user_prio_map;
			err = FUNC7(dev, &app);
		}

		if (err)
			FUNC8(adap->pdev_dev,
				"Failed DCB Set Application Priority: sel=%d, prot=%d, prio=%d, err=%d\n",
				app.selector, app.protocol, app.priority, -err);

		ap->user_prio_map = fwap->user_prio_map;
		ap->sel_field = fwap->sel_field;
		ap->protocolid = FUNC3(fwap->protocolid);
		dcb->msgs |= CXGB4_DCB_FW_APP_ID;
		break;
	}

	default:
		FUNC8(adap->pdev_dev, "Unknown DCB update type received %x\n",
			dcb_type);
		break;
	}
}