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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_recv_msg {void* msg_id; void* msg_len; void* async_mgmt_to_pf; void* mod; void* cmd; scalar_t__ msg; } ;
struct hinic_pf_to_mgmt {struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MGMT_TO_PF ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  DIRECTION ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAST ; 
 int MAX_MSG_LEN ; 
 void* MGMT_RESP ; 
 int /*<<< orphan*/  MODULE ; 
 int /*<<< orphan*/  MSG_ID ; 
 int /*<<< orphan*/  MSG_LEN ; 
 int SEGMENT_LEN ; 
 int /*<<< orphan*/  SEG_LEN ; 
 int /*<<< orphan*/  SEQID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_pf_to_mgmt*,struct hinic_recv_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_pf_to_mgmt*,struct hinic_recv_msg*) ; 

__attribute__((used)) static void FUNC5(struct hinic_pf_to_mgmt *pf_to_mgmt,
				  u64 *header, struct hinic_recv_msg *recv_msg)
{
	struct hinic_hwif *hwif = pf_to_mgmt->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int seq_id, seg_len;
	u8 *msg_body;

	seq_id = FUNC0(*header, SEQID);
	seg_len = FUNC0(*header, SEG_LEN);

	if (seq_id >= (MAX_MSG_LEN / SEGMENT_LEN)) {
		FUNC1(&pdev->dev, "recv big mgmt msg\n");
		return;
	}

	msg_body = (u8 *)header + sizeof(*header);
	FUNC2(recv_msg->msg + seq_id * SEGMENT_LEN, msg_body, seg_len);

	if (!FUNC0(*header, LAST))
		return;

	recv_msg->cmd = FUNC0(*header, CMD);
	recv_msg->mod = FUNC0(*header, MODULE);
	recv_msg->async_mgmt_to_pf = FUNC0(*header,
							  ASYNC_MGMT_TO_PF);
	recv_msg->msg_len = FUNC0(*header, MSG_LEN);
	recv_msg->msg_id = FUNC0(*header, MSG_ID);

	if (FUNC0(*header, DIRECTION) == MGMT_RESP)
		FUNC4(pf_to_mgmt, recv_msg);
	else
		FUNC3(pf_to_mgmt, recv_msg);
}