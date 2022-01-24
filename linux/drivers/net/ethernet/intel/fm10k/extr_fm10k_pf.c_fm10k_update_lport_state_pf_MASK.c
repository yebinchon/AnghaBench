#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* enqueue_tx ) (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;} ;
struct fm10k_mbx_info {TYPE_1__ ops; } ;
struct fm10k_hw {struct fm10k_mbx_info mbx; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FM10K_PF_ATTR_ID_PORT ; 
 int /*<<< orphan*/  FM10K_PF_MSG_ID_LPORT_CREATE ; 
 int /*<<< orphan*/  FM10K_PF_MSG_ID_LPORT_DELETE ; 
 int /*<<< orphan*/  FM10K_XCAST_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ; 

__attribute__((used)) static s32 FUNC5(struct fm10k_hw *hw, u16 glort,
				       u16 count, bool enable)
{
	struct fm10k_mbx_info *mbx = &hw->mbx;
	u32 msg[3], lport_msg;

	/* do nothing if we are being asked to create or destroy 0 ports */
	if (!count)
		return 0;

	/* if glort is not valid return error */
	if (!FUNC0(hw, glort))
		return FM10K_ERR_PARAM;

	/* reset multicast mode if deleting lport */
	if (!enable)
		FUNC3(hw, glort, FM10K_XCAST_MODE_NONE);

	/* construct the lport message from the 2 pieces of data we have */
	lport_msg = ((u32)count << 16) | glort;

	/* generate lport create/delete message */
	FUNC2(msg, enable ? FM10K_PF_MSG_ID_LPORT_CREATE :
					 FM10K_PF_MSG_ID_LPORT_DELETE);
	FUNC1(msg, FM10K_PF_ATTR_ID_PORT, lport_msg);

	/* load onto outgoing mailbox */
	return mbx->ops.enqueue_tx(hw, mbx, msg);
}