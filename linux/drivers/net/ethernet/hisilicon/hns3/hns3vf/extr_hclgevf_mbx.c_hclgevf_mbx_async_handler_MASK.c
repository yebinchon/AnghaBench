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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct TYPE_8__ {size_t tail; size_t head; int** msg_q; int /*<<< orphan*/  count; } ;
struct TYPE_5__ {size_t supported; size_t advertising; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct hclgevf_dev {int mbx_event_pending; TYPE_4__ arq; TYPE_3__* pdev; int /*<<< orphan*/  reset_state; int /*<<< orphan*/  reset_pending; TYPE_2__ hw; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  speed ;
typedef  enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGEVF_RESET_PENDING ; 
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
#define  HCLGE_MBX_ASSERTING_RESET 131 
#define  HCLGE_MBX_LINK_STAT_CHANGE 130 
#define  HCLGE_MBX_LINK_STAT_MODE 129 
#define  HCLGE_MBX_PUSH_VLAN_INFO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclgevf_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hclgevf_dev*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hclgevf_dev*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(struct hclgevf_dev *hdev)
{
	enum hnae3_reset_type reset_type;
	u16 link_status, state;
	u16 *msg_q, *vlan_info;
	u8 duplex;
	u32 speed;
	u32 tail;
	u8 idx;

	/* we can safely clear it now as we are at start of the async message
	 * processing
	 */
	hdev->mbx_event_pending = false;

	tail = hdev->arq.tail;

	/* process all the async queue messages */
	while (tail != hdev->arq.head) {
		if (FUNC10(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
			FUNC2(&hdev->pdev->dev,
				 "vf crq need init in async\n");
			return;
		}

		msg_q = hdev->arq.msg_q[hdev->arq.head];

		switch (msg_q[0]) {
		case HCLGE_MBX_LINK_STAT_CHANGE:
			link_status = msg_q[1];
			FUNC8(&speed, &msg_q[2], sizeof(speed));
			duplex = (u8)msg_q[4];

			/* update upper layer with new link link status */
			FUNC5(hdev, link_status);
			FUNC7(hdev, speed, duplex);

			break;
		case HCLGE_MBX_LINK_STAT_MODE:
			idx = (u8)msg_q[1];
			if (idx)
				FUNC8(&hdev->hw.mac.supported, &msg_q[2],
				       sizeof(unsigned long));
			else
				FUNC8(&hdev->hw.mac.advertising, &msg_q[2],
				       sizeof(unsigned long));
			break;
		case HCLGE_MBX_ASSERTING_RESET:
			/* PF has asserted reset hence VF should go in pending
			 * state and poll for the hardware reset status till it
			 * has been completely reset. After this stack should
			 * eventually be re-initialized.
			 */
			reset_type = (enum hnae3_reset_type)msg_q[1];
			FUNC9(reset_type, &hdev->reset_pending);
			FUNC9(HCLGEVF_RESET_PENDING, &hdev->reset_state);
			FUNC4(hdev);

			break;
		case HCLGE_MBX_PUSH_VLAN_INFO:
			state = msg_q[1];
			vlan_info = &msg_q[1];
			FUNC6(hdev, state,
							   (u8 *)vlan_info, 8);
			break;
		default:
			FUNC1(&hdev->pdev->dev,
				"fetched unsupported(%d) message from arq\n",
				msg_q[0]);
			break;
		}

		FUNC3(hdev->arq);
		FUNC0(&hdev->arq.count);
		msg_q = hdev->arq.msg_q[hdev->arq.head];
	}
}