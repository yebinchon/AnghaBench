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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fm10k_mbx_info {int state; int /*<<< orphan*/  tail; scalar_t__ head_len; scalar_t__ pushed; int /*<<< orphan*/  mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;

/* Variables and functions */
 scalar_t__ FM10K_MBX_ERR_HEAD ; 
 scalar_t__ FM10K_MBX_ERR_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
#define  FM10K_STATE_DISCONNECT 129 
#define  FM10K_STATE_OPEN 128 
 int /*<<< orphan*/  HEAD ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC4 (struct fm10k_mbx_info*) ; 

__attribute__((used)) static s32 FUNC5(struct fm10k_hw *hw,
					struct fm10k_mbx_info *mbx)
{
	const enum fm10k_mbx_state state = mbx->state;
	const u32 *hdr = &mbx->mbx_hdr;
	u16 head;
	s32 err;

	/* we will need to pull the header field for verification */
	head = FUNC0(*hdr, HEAD);

	/* We should not be receiving disconnect if Rx is incomplete */
	if (mbx->pushed)
		return FM10K_MBX_ERR_TAIL;

	/* we have already verified mbx->head == tail so we know this is 0 */
	mbx->head_len = 0;

	/* verify the checksum on the incoming header is correct */
	err = FUNC4(mbx);
	if (err)
		return err;

	switch (state) {
	case FM10K_STATE_DISCONNECT:
	case FM10K_STATE_OPEN:
		/* state doesn't change if we still have work to do */
		if (!FUNC3(mbx))
			break;

		/* verify the head indicates we completed all transmits */
		if (head != mbx->tail)
			return FM10K_MBX_ERR_HEAD;

		/* reset any in-progress work */
		FUNC1(mbx);
		break;
	default:
		break;
	}

	return FUNC2(hw, mbx, head);
}