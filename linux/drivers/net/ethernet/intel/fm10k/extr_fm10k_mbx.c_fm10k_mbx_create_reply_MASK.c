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
typedef  int /*<<< orphan*/  u16 ;
struct fm10k_mbx_info {int state; int /*<<< orphan*/  tail_len; } ;
struct fm10k_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
#define  FM10K_STATE_CLOSED 131 
#define  FM10K_STATE_CONNECT 130 
#define  FM10K_STATE_DISCONNECT 129 
#define  FM10K_STATE_OPEN 128 
 int /*<<< orphan*/  FUNC0 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC5(struct fm10k_hw *hw,
				  struct fm10k_mbx_info *mbx, u16 head)
{
	switch (mbx->state) {
	case FM10K_STATE_OPEN:
	case FM10K_STATE_DISCONNECT:
		/* update our checksum for the outgoing data */
		FUNC4(mbx, head);

		/* as long as other end recognizes us keep sending data */
		FUNC3(hw, mbx, head);

		/* generate new header based on data */
		if (mbx->tail_len || (mbx->state == FM10K_STATE_OPEN))
			FUNC1(mbx);
		else
			FUNC2(mbx);
		break;
	case FM10K_STATE_CONNECT:
		/* send disconnect even if we aren't connected */
		FUNC0(mbx);
		break;
	case FM10K_STATE_CLOSED:
		/* generate new header based on data */
		FUNC2(mbx);
	default:
		break;
	}

	return 0;
}