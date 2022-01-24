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
struct fm10k_mbx_info {scalar_t__ state; int /*<<< orphan*/  mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FM10K_MBX_ERR_TYPE ; 
#define  FM10K_MSG_CONNECT 131 
#define  FM10K_MSG_DATA 130 
#define  FM10K_MSG_DISCONNECT 129 
#define  FM10K_MSG_ERROR 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FM10K_STATE_CLOSED ; 
 int /*<<< orphan*/  TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC3 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC4 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC5 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC6 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC7 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 

__attribute__((used)) static s32 FUNC9(struct fm10k_hw *hw,
			     struct fm10k_mbx_info *mbx)
{
	s32 err;

	/* we do not read mailbox if closed */
	if (mbx->state == FM10K_STATE_CLOSED)
		return 0;

	/* copy data from mailbox */
	err = FUNC6(hw, mbx);
	if (err)
		return err;

	/* validate type, source, and destination */
	err = FUNC7(mbx);
	if (err < 0)
		goto msg_err;

	switch (FUNC0(mbx->mbx_hdr, TYPE)) {
	case FM10K_MSG_CONNECT:
		err = FUNC2(hw, mbx);
		break;
	case FM10K_MSG_DATA:
		err = FUNC3(hw, mbx);
		break;
	case FM10K_MSG_DISCONNECT:
		err = FUNC4(hw, mbx);
		break;
	case FM10K_MSG_ERROR:
		err = FUNC5(hw, mbx);
		break;
	default:
		err = FM10K_MBX_ERR_TYPE;
		break;
	}

msg_err:
	/* notify partner of errors on our end */
	if (err < 0)
		FUNC1(mbx, err);

	/* copy data from mailbox */
	FUNC8(hw, mbx);

	return err;
}