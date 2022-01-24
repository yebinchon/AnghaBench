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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {int /*<<< orphan*/  opcode; } ;
struct ice_rq_event_info {int /*<<< orphan*/  msg_buf; TYPE_4__ desc; int /*<<< orphan*/  buf_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct ice_ctl_q_info {int /*<<< orphan*/  rq_buf_size; TYPE_2__ sq; TYPE_1__ rq; } ;
struct ice_hw {struct ice_ctl_q_info mailboxq; struct ice_ctl_q_info adminq; } ;
struct ice_pf {TYPE_3__* pdev; int /*<<< orphan*/  state; struct ice_hw hw; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_ctl_q { ____Placeholder_ice_ctl_q } ice_ctl_q ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  ICE_CTL_Q_ADMIN 133 
#define  ICE_CTL_Q_MAILBOX 132 
 scalar_t__ ICE_DFLT_IRQ_WORK ; 
 int ICE_ERR_AQ_NO_WORK ; 
 int PF_FW_ARQLEN_ARQCRIT_M ; 
 int PF_FW_ARQLEN_ARQOVFL_M ; 
 int PF_FW_ARQLEN_ARQVFE_M ; 
 int PF_FW_ATQLEN_ATQCRIT_M ; 
 int PF_FW_ATQLEN_ATQOVFL_M ; 
 int PF_FW_ATQLEN_ATQVFE_M ; 
 int /*<<< orphan*/  __ICE_RESET_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ice_aqc_opc_fw_logging 131 
#define  ice_aqc_opc_get_link_status 130 
#define  ice_aqc_opc_lldp_set_mib_change 129 
 int FUNC5 (struct ice_hw*,struct ice_ctl_q_info*,struct ice_rq_event_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_pf*,struct ice_rq_event_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_pf*,struct ice_rq_event_info*) ; 
#define  ice_mbx_opc_send_msg_to_pf 128 
 int /*<<< orphan*/  FUNC8 (struct ice_hw*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_pf*,struct ice_rq_event_info*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct ice_pf *pf, enum ice_ctl_q q_type)
{
	struct ice_rq_event_info event;
	struct ice_hw *hw = &pf->hw;
	struct ice_ctl_q_info *cq;
	u16 pending, i = 0;
	const char *qtype;
	u32 oldval, val;

	/* Do not clean control queue if/when PF reset fails */
	if (FUNC12(__ICE_RESET_FAILED, pf->state))
		return 0;

	switch (q_type) {
	case ICE_CTL_Q_ADMIN:
		cq = &hw->adminq;
		qtype = "Admin";
		break;
	case ICE_CTL_Q_MAILBOX:
		cq = &hw->mailboxq;
		qtype = "Mailbox";
		break;
	default:
		FUNC2(&pf->pdev->dev, "Unknown control queue type 0x%x\n",
			 q_type);
		return 0;
	}

	/* check for error indications - PF_xx_AxQLEN register layout for
	 * FW/MBX/SB are identical so just use defines for PF_FW_AxQLEN.
	 */
	val = FUNC11(hw, cq->rq.len);
	if (val & (PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
		   PF_FW_ARQLEN_ARQCRIT_M)) {
		oldval = val;
		if (val & PF_FW_ARQLEN_ARQVFE_M)
			FUNC0(&pf->pdev->dev,
				"%s Receive Queue VF Error detected\n", qtype);
		if (val & PF_FW_ARQLEN_ARQOVFL_M) {
			FUNC0(&pf->pdev->dev,
				"%s Receive Queue Overflow Error detected\n",
				qtype);
		}
		if (val & PF_FW_ARQLEN_ARQCRIT_M)
			FUNC0(&pf->pdev->dev,
				"%s Receive Queue Critical Error detected\n",
				qtype);
		val &= ~(PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
			 PF_FW_ARQLEN_ARQCRIT_M);
		if (oldval != val)
			FUNC13(hw, cq->rq.len, val);
	}

	val = FUNC11(hw, cq->sq.len);
	if (val & (PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
		   PF_FW_ATQLEN_ATQCRIT_M)) {
		oldval = val;
		if (val & PF_FW_ATQLEN_ATQVFE_M)
			FUNC0(&pf->pdev->dev,
				"%s Send Queue VF Error detected\n", qtype);
		if (val & PF_FW_ATQLEN_ATQOVFL_M) {
			FUNC0(&pf->pdev->dev,
				"%s Send Queue Overflow Error detected\n",
				qtype);
		}
		if (val & PF_FW_ATQLEN_ATQCRIT_M)
			FUNC0(&pf->pdev->dev,
				"%s Send Queue Critical Error detected\n",
				qtype);
		val &= ~(PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
			 PF_FW_ATQLEN_ATQCRIT_M);
		if (oldval != val)
			FUNC13(hw, cq->sq.len, val);
	}

	event.buf_len = cq->rq_buf_size;
	event.msg_buf = FUNC4(&pf->pdev->dev, event.buf_len,
				     GFP_KERNEL);
	if (!event.msg_buf)
		return 0;

	do {
		enum ice_status ret;
		u16 opcode;

		ret = FUNC5(hw, cq, &event, &pending);
		if (ret == ICE_ERR_AQ_NO_WORK)
			break;
		if (ret) {
			FUNC1(&pf->pdev->dev,
				"%s Receive Queue event error %d\n", qtype,
				ret);
			break;
		}

		opcode = FUNC10(event.desc.opcode);

		switch (opcode) {
		case ice_aqc_opc_get_link_status:
			if (FUNC7(pf, &event))
				FUNC1(&pf->pdev->dev,
					"Could not handle link event\n");
			break;
		case ice_mbx_opc_send_msg_to_pf:
			FUNC9(pf, &event);
			break;
		case ice_aqc_opc_fw_logging:
			FUNC8(hw, &event.desc, event.msg_buf);
			break;
		case ice_aqc_opc_lldp_set_mib_change:
			FUNC6(pf, &event);
			break;
		default:
			FUNC0(&pf->pdev->dev,
				"%s Receive Queue unknown event 0x%04x ignored\n",
				qtype, opcode);
			break;
		}
	} while (pending && (i++ < ICE_DFLT_IRQ_WORK));

	FUNC3(&pf->pdev->dev, event.msg_buf);

	return pending && (i == ICE_DFLT_IRQ_WORK);
}