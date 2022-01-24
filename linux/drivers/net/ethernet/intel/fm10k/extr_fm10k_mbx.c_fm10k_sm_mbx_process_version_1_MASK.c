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
struct fm10k_mbx_info {scalar_t__ state; int remote; int /*<<< orphan*/  mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FM10K_MBX_ERR_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ FM10K_STATE_CONNECT ; 
 scalar_t__ FM10K_STATE_OPEN ; 
 int /*<<< orphan*/  SM_HEAD ; 
 int /*<<< orphan*/  SM_TAIL ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct fm10k_hw *hw,
					  struct fm10k_mbx_info *mbx)
{
	const u32 *hdr = &mbx->mbx_hdr;
	u16 head, tail;
	s32 len;

	/* pull all fields needed for verification */
	tail = FUNC0(*hdr, SM_TAIL);
	head = FUNC0(*hdr, SM_HEAD);

	/* if we are in connect and wanting version 1 then start up and go */
	if (mbx->state == FM10K_STATE_CONNECT) {
		if (!mbx->remote)
			goto send_reply;
		if (mbx->remote != 1)
			return FM10K_MBX_ERR_SRC;

		mbx->state = FM10K_STATE_OPEN;
	}

	do {
		/* abort on message size errors */
		len = FUNC2(hw, mbx, tail);
		if (len < 0)
			return len;

		/* continue until we have flushed the Rx FIFO */
	} while (len);

send_reply:
	FUNC1(hw, mbx, head);

	return 0;
}