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
typedef  int u32 ;
struct bnx2 {int fw_wr_seq; int fw_last_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MB ; 
 int BNX2_DRV_MSG_CODE ; 
 int BNX2_DRV_MSG_CODE_FW_TIMEOUT ; 
 int BNX2_DRV_MSG_DATA ; 
 int BNX2_DRV_MSG_DATA_WAIT0 ; 
 int BNX2_DRV_MSG_SEQ ; 
 int BNX2_FW_ACK_TIME_OUT_MS ; 
 int /*<<< orphan*/  BNX2_FW_MB ; 
 int BNX2_FW_MSG_ACK ; 
 int BNX2_FW_MSG_STATUS_MASK ; 
 int BNX2_FW_MSG_STATUS_OK ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct bnx2 *bp, u32 msg_data, int ack, int silent)
{
	int i;
	u32 val;

	bp->fw_wr_seq++;
	msg_data |= bp->fw_wr_seq;
	bp->fw_last_msg = msg_data;

	FUNC2(bp, BNX2_DRV_MB, msg_data);

	if (!ack)
		return 0;

	/* wait for an acknowledgement. */
	for (i = 0; i < (BNX2_FW_ACK_TIME_OUT_MS / 10); i++) {
		FUNC3(10);

		val = FUNC1(bp, BNX2_FW_MB);

		if ((val & BNX2_FW_MSG_ACK) == (msg_data & BNX2_DRV_MSG_SEQ))
			break;
	}
	if ((msg_data & BNX2_DRV_MSG_DATA) == BNX2_DRV_MSG_DATA_WAIT0)
		return 0;

	/* If we timed out, inform the firmware that this is the case. */
	if ((val & BNX2_FW_MSG_ACK) != (msg_data & BNX2_DRV_MSG_SEQ)) {
		msg_data &= ~BNX2_DRV_MSG_CODE;
		msg_data |= BNX2_DRV_MSG_CODE_FW_TIMEOUT;

		FUNC2(bp, BNX2_DRV_MB, msg_data);
		if (!silent) {
			FUNC4("fw sync timeout, reset code = %x\n", msg_data);
			FUNC0(bp);
		}

		return -EBUSY;
	}

	if ((val & BNX2_FW_MSG_STATUS_MASK) != BNX2_FW_MSG_STATUS_OK)
		return -EIO;

	return 0;
}