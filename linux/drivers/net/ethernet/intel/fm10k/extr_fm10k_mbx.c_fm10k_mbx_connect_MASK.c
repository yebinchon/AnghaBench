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
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;
struct fm10k_mbx_info {scalar_t__ state; int mbmem_reg; int mbmem_len; int mbx_lock; int /*<<< orphan*/  mbx_hdr; int /*<<< orphan*/  timeout; TYPE_1__ rx; } ;
struct fm10k_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FM10K_MBX_ACK_INTERRUPT ; 
 int /*<<< orphan*/  FM10K_MBX_ERR_BUSY ; 
 int /*<<< orphan*/  FM10K_MBX_ERR_NO_SPACE ; 
 int /*<<< orphan*/  FM10K_MBX_INIT_TIMEOUT ; 
 int FM10K_MBX_INTERRUPT_ENABLE ; 
 int FM10K_MBX_REQ_INTERRUPT ; 
 scalar_t__ FM10K_STATE_CLOSED ; 
 scalar_t__ FM10K_STATE_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC5(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
{
	/* we cannot connect an uninitialized mailbox */
	if (!mbx->rx.buffer)
		return FM10K_MBX_ERR_NO_SPACE;

	/* we cannot connect an already connected mailbox */
	if (mbx->state != FM10K_STATE_CLOSED)
		return FM10K_MBX_ERR_BUSY;

	/* mailbox timeout can now become active */
	mbx->timeout = FM10K_MBX_INIT_TIMEOUT;

	/* Place mbx in ready to connect state */
	mbx->state = FM10K_STATE_CONNECT;

	FUNC2(mbx);

	/* initialize header of remote mailbox */
	FUNC1(mbx);
	FUNC4(hw, mbx->mbmem_reg ^ mbx->mbmem_len, mbx->mbx_hdr);

	/* enable interrupt and notify other party of new message */
	mbx->mbx_lock = FM10K_MBX_REQ_INTERRUPT | FM10K_MBX_ACK_INTERRUPT |
			FM10K_MBX_INTERRUPT_ENABLE;

	/* generate and load connect header into mailbox */
	FUNC0(mbx);
	FUNC3(hw, mbx);

	return 0;
}