#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclgevf_mbx_resp_status {int received_resp; int origin_mbx_msg; int resp_status; int /*<<< orphan*/ * additional_info; } ;
struct hclgevf_cmq_ring {size_t next_to_use; struct hclgevf_desc* desc; } ;
struct TYPE_6__ {struct hclgevf_cmq_ring crq; } ;
struct TYPE_8__ {TYPE_1__ cmq; } ;
struct TYPE_9__ {size_t tail; int /*<<< orphan*/  count; int /*<<< orphan*/ ** msg_q; } ;
struct hclgevf_dev {int mbx_event_pending; TYPE_3__ hw; TYPE_2__* pdev; TYPE_5__ arq; int /*<<< orphan*/  state; struct hclgevf_mbx_resp_status mbx_resp; } ;
struct hclgevf_desc {scalar_t__ flag; scalar_t__ data; } ;
struct hclge_mbx_pf_to_vf_cmd {int* msg; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_CMDQ_RX_OUTVLD_B ; 
 int /*<<< orphan*/  HCLGEVF_NIC_CRQ_HEAD_REG ; 
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
#define  HCLGE_MBX_ASSERTING_RESET 132 
#define  HCLGE_MBX_LINK_STAT_CHANGE 131 
#define  HCLGE_MBX_LINK_STAT_MODE 130 
 int /*<<< orphan*/  HCLGE_MBX_MAX_ARQ_MSG_NUM ; 
 int HCLGE_MBX_MAX_ARQ_MSG_SIZE ; 
 int HCLGE_MBX_MAX_RESP_DATA_SIZE ; 
#define  HCLGE_MBX_PF_VF_RESP 129 
#define  HCLGE_MBX_PUSH_VLAN_INFO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hclgevf_cmq_ring*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(struct hclgevf_dev *hdev)
{
	struct hclgevf_mbx_resp_status *resp;
	struct hclge_mbx_pf_to_vf_cmd *req;
	struct hclgevf_cmq_ring *crq;
	struct hclgevf_desc *desc;
	u16 *msg_q;
	u16 flag;
	u8 *temp;
	int i;

	resp = &hdev->mbx_resp;
	crq = &hdev->hw.cmq.crq;

	while (!FUNC7(&hdev->hw)) {
		if (FUNC13(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
			FUNC3(&hdev->pdev->dev, "vf crq need init\n");
			return;
		}

		desc = &crq->desc[crq->next_to_use];
		req = (struct hclge_mbx_pf_to_vf_cmd *)desc->data;

		flag = FUNC11(crq->desc[crq->next_to_use].flag);
		if (FUNC14(!FUNC10(flag, HCLGEVF_CMDQ_RX_OUTVLD_B))) {
			FUNC4(&hdev->pdev->dev,
				 "dropped invalid mailbox message, code = %d\n",
				 req->msg[0]);

			/* dropping/not processing this invalid message */
			crq->desc[crq->next_to_use].flag = 0;
			FUNC5(crq);
			continue;
		}

		/* synchronous messages are time critical and need preferential
		 * treatment. Therefore, we need to acknowledge all the sync
		 * responses as quickly as possible so that waiting tasks do not
		 * timeout and simultaneously queue the async messages for later
		 * prcessing in context of mailbox task i.e. the slow path.
		 */
		switch (req->msg[0]) {
		case HCLGE_MBX_PF_VF_RESP:
			if (resp->received_resp)
				FUNC4(&hdev->pdev->dev,
					 "VF mbx resp flag not clear(%d)\n",
					 req->msg[1]);
			resp->received_resp = true;

			resp->origin_mbx_msg = (req->msg[1] << 16);
			resp->origin_mbx_msg |= req->msg[2];
			resp->resp_status = req->msg[3];

			temp = (u8 *)&req->msg[4];
			for (i = 0; i < HCLGE_MBX_MAX_RESP_DATA_SIZE; i++) {
				resp->additional_info[i] = *temp;
				temp++;
			}
			break;
		case HCLGE_MBX_LINK_STAT_CHANGE:
		case HCLGE_MBX_ASSERTING_RESET:
		case HCLGE_MBX_LINK_STAT_MODE:
		case HCLGE_MBX_PUSH_VLAN_INFO:
			/* set this mbx event as pending. This is required as we
			 * might loose interrupt event when mbx task is busy
			 * handling. This shall be cleared when mbx task just
			 * enters handling state.
			 */
			hdev->mbx_event_pending = true;

			/* we will drop the async msg if we find ARQ as full
			 * and continue with next message
			 */
			if (FUNC1(&hdev->arq.count) >=
			    HCLGE_MBX_MAX_ARQ_MSG_NUM) {
				FUNC4(&hdev->pdev->dev,
					 "Async Q full, dropping msg(%d)\n",
					 req->msg[1]);
				break;
			}

			/* tail the async message in arq */
			msg_q = hdev->arq.msg_q[hdev->arq.tail];
			FUNC12(&msg_q[0], req->msg,
			       HCLGE_MBX_MAX_ARQ_MSG_SIZE * sizeof(u16));
			FUNC6(hdev->arq);
			FUNC0(&hdev->arq.count);

			FUNC8(hdev);

			break;
		default:
			FUNC2(&hdev->pdev->dev,
				"VF received unsupported(%d) mbx msg from PF\n",
				req->msg[0]);
			break;
		}
		crq->desc[crq->next_to_use].flag = 0;
		FUNC5(crq);
	}

	/* Write back CMDQ_RQ header pointer, M7 need this pointer */
	FUNC9(&hdev->hw, HCLGEVF_NIC_CRQ_HEAD_REG,
			  crq->next_to_use);
}