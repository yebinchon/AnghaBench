#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; size_t mbx_src_vfid; } ;
struct hclge_cmq_ring {size_t next_to_use; struct hclge_desc* desc; } ;
struct TYPE_5__ {struct hclge_cmq_ring crq; } ;
struct TYPE_7__ {TYPE_1__ cmq; } ;
struct hclge_dev {TYPE_3__ hw; TYPE_2__* pdev; int /*<<< orphan*/  vport_cfg_mutex; struct hclge_vport* vport; int /*<<< orphan*/  state; } ;
struct hclge_desc {scalar_t__ flag; scalar_t__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMDQ_RX_OUTVLD_B ; 
 int /*<<< orphan*/  HCLGE_MAC_ADDR_MC ; 
 int /*<<< orphan*/  HCLGE_MAC_ADDR_UC ; 
#define  HCLGE_MBX_GET_LINK_MODE 149 
#define  HCLGE_MBX_GET_LINK_STATUS 148 
#define  HCLGE_MBX_GET_MEDIA_TYPE 147 
#define  HCLGE_MBX_GET_QDEPTH 146 
#define  HCLGE_MBX_GET_QID_IN_PF 145 
#define  HCLGE_MBX_GET_QINFO 144 
#define  HCLGE_MBX_GET_RSS_KEY 143 
#define  HCLGE_MBX_GET_TCINFO 142 
#define  HCLGE_MBX_GET_VF_FLR_STATUS 141 
#define  HCLGE_MBX_KEEP_ALIVE 140 
#define  HCLGE_MBX_MAP_RING_TO_VECTOR 139 
#define  HCLGE_MBX_NCSI_ERROR 138 
#define  HCLGE_MBX_PUSH_LINK_STATUS 137 
#define  HCLGE_MBX_QUEUE_RESET 136 
#define  HCLGE_MBX_RESET 135 
#define  HCLGE_MBX_SET_ALIVE 134 
#define  HCLGE_MBX_SET_MTU 133 
#define  HCLGE_MBX_SET_MULTICAST 132 
#define  HCLGE_MBX_SET_PROMISC_MODE 131 
#define  HCLGE_MBX_SET_UNICAST 130 
#define  HCLGE_MBX_SET_VLAN 129 
#define  HCLGE_MBX_UNMAP_RING_TO_VECTOR 128 
 int /*<<< orphan*/  HCLGE_NIC_CRQ_HEAD_REG ; 
 int /*<<< orphan*/  HCLGE_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC5 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC6 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC7 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC8 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ; 
 int FUNC9 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ; 
 int FUNC10 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hclge_dev*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct hclge_dev*) ; 
 int FUNC13 (struct hclge_vport*,int,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC14 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC15 (struct hclge_cmq_ring*) ; 
 int /*<<< orphan*/  FUNC16 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (struct hclge_vport*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hclge_vport*,int) ; 
 int FUNC19 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ; 
 int FUNC20 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ; 
 int FUNC21 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC22 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC23 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int FUNC24 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC25 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (int) ; 

void FUNC33(struct hclge_dev *hdev)
{
	struct hclge_cmq_ring *crq = &hdev->hw.cmq.crq;
	struct hclge_mbx_vf_to_pf_cmd *req;
	struct hclge_vport *vport;
	struct hclge_desc *desc;
	unsigned int flag;
	int ret;

	/* handle all the mailbox requests in the queue */
	while (!FUNC2(&hdev->hw)) {
		if (FUNC31(HCLGE_STATE_CMD_DISABLE, &hdev->state)) {
			FUNC1(&hdev->pdev->dev,
				 "command queue needs re-initializing\n");
			return;
		}

		desc = &crq->desc[crq->next_to_use];
		req = (struct hclge_mbx_vf_to_pf_cmd *)desc->data;

		flag = FUNC28(crq->desc[crq->next_to_use].flag);
		if (FUNC32(!FUNC27(flag, HCLGE_CMDQ_RX_OUTVLD_B))) {
			FUNC1(&hdev->pdev->dev,
				 "dropped invalid mailbox message, code = %d\n",
				 req->msg[0]);

			/* dropping/not processing this invalid message */
			crq->desc[crq->next_to_use].flag = 0;
			FUNC15(crq);
			continue;
		}

		vport = &hdev->vport[req->mbx_src_vfid];

		switch (req->msg[0]) {
		case HCLGE_MBX_MAP_RING_TO_VECTOR:
			ret = FUNC13(vport, true,
								req);
			break;
		case HCLGE_MBX_UNMAP_RING_TO_VECTOR:
			ret = FUNC13(vport, false,
								req);
			break;
		case HCLGE_MBX_SET_PROMISC_MODE:
			ret = FUNC22(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to set VF promisc mode\n",
					ret);
			break;
		case HCLGE_MBX_SET_UNICAST:
			ret = FUNC23(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to set VF UC MAC Addr\n",
					ret);
			break;
		case HCLGE_MBX_SET_MULTICAST:
			ret = FUNC20(vport, req, false);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to set VF MC MAC Addr\n",
					ret);
			break;
		case HCLGE_MBX_SET_VLAN:
			ret = FUNC24(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to config VF's VLAN\n",
					ret);
			break;
		case HCLGE_MBX_SET_ALIVE:
			ret = FUNC19(vport, req, false);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to set VF's ALIVE\n",
					ret);
			break;
		case HCLGE_MBX_GET_QINFO:
			ret = FUNC9(vport, req, true);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to get Q info for VF\n",
					ret);
			break;
		case HCLGE_MBX_GET_QDEPTH:
			ret = FUNC8(vport, req, true);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to get Q depth for VF\n",
					ret);
			break;

		case HCLGE_MBX_GET_TCINFO:
			ret = FUNC10(vport, req, true);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to get TC info for VF\n",
					ret);
			break;
		case HCLGE_MBX_GET_LINK_STATUS:
			ret = FUNC3(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to get link stat for VF\n",
					ret);
			break;
		case HCLGE_MBX_QUEUE_RESET:
			FUNC14(vport, req);
			break;
		case HCLGE_MBX_RESET:
			FUNC16(vport, req);
			break;
		case HCLGE_MBX_KEEP_ALIVE:
			FUNC25(vport, req);
			break;
		case HCLGE_MBX_SET_MTU:
			ret = FUNC21(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"VF fail(%d) to set mtu\n", ret);
			break;
		case HCLGE_MBX_GET_QID_IN_PF:
			ret = FUNC5(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF failed(%d) to get qid for VF\n",
					ret);
			break;
		case HCLGE_MBX_GET_RSS_KEY:
			ret = FUNC6(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to get rss key for VF\n",
					ret);
			break;
		case HCLGE_MBX_GET_LINK_MODE:
			FUNC4(vport, req);
			break;
		case HCLGE_MBX_GET_VF_FLR_STATUS:
			FUNC29(&hdev->vport_cfg_mutex);
			FUNC17(vport, true,
						     HCLGE_MAC_ADDR_UC);
			FUNC17(vport, true,
						     HCLGE_MAC_ADDR_MC);
			FUNC18(vport, true);
			FUNC30(&hdev->vport_cfg_mutex);
			break;
		case HCLGE_MBX_GET_MEDIA_TYPE:
			ret = FUNC7(vport, req);
			if (ret)
				FUNC0(&hdev->pdev->dev,
					"PF fail(%d) to media type for VF\n",
					ret);
			break;
		case HCLGE_MBX_PUSH_LINK_STATUS:
			FUNC11(hdev, req);
			break;
		case HCLGE_MBX_NCSI_ERROR:
			FUNC12(hdev);
			break;
		default:
			FUNC0(&hdev->pdev->dev,
				"un-supported mailbox message, code = %d\n",
				req->msg[0]);
			break;
		}
		crq->desc[crq->next_to_use].flag = 0;
		FUNC15(crq);
	}

	/* Write back CMDQ_RQ header pointer, M7 need this pointer */
	FUNC26(&hdev->hw, HCLGE_NIC_CRQ_HEAD_REG, crq->next_to_use);
}