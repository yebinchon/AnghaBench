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
struct TYPE_2__ {int /*<<< orphan*/  (* process ) (struct fm10k_hw*,struct fm10k_mbx_info*) ;} ;
struct fm10k_mbx_info {int timeout; scalar_t__ state; int /*<<< orphan*/  mbmem_reg; int /*<<< orphan*/  tx; scalar_t__ remote; TYPE_1__ ops; int /*<<< orphan*/  mbx_reg; } ;
struct fm10k_hw {int dummy; } ;

/* Variables and functions */
 int FM10K_MBX_DISCONNECT_TIMEOUT ; 
 int FM10K_MBX_INTERRUPT_DISABLE ; 
 scalar_t__ FM10K_MBX_POLL_DELAY ; 
 int FM10K_MBX_REQ ; 
 scalar_t__ FM10K_STATE_CLOSED ; 
 scalar_t__ FM10K_STATE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct fm10k_hw *hw,
				    struct fm10k_mbx_info *mbx)
{
	int timeout = mbx->timeout ? FM10K_MBX_DISCONNECT_TIMEOUT : 0;

	/* Place mbx in ready to disconnect state */
	mbx->state = FM10K_STATE_DISCONNECT;

	/* trigger interrupt to start shutdown process */
	FUNC2(hw, mbx->mbx_reg, FM10K_MBX_REQ |
					  FM10K_MBX_INTERRUPT_DISABLE);
	do {
		FUNC4(FM10K_MBX_POLL_DELAY);
		mbx->ops.process(hw, mbx);
		timeout -= FM10K_MBX_POLL_DELAY;
	} while ((timeout > 0) && (mbx->state != FM10K_STATE_CLOSED));

	/* in case we didn't close just force the mailbox into shutdown */
	mbx->state = FM10K_STATE_CLOSED;
	mbx->remote = 0;
	FUNC1(mbx);
	FUNC0(&mbx->tx);

	FUNC2(hw, mbx->mbmem_reg, 0);
}