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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  reset_while_pending; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  FM10K_DMA_CTRL ; 
 int FM10K_DMA_CTRL_DATAPATH_RESET ; 
 int FM10K_DMA_CTRL_RX_ACTIVE ; 
 int FM10K_DMA_CTRL_TX_ACTIVE ; 
 int /*<<< orphan*/  FM10K_EIMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FM10K_ERR_DMA_PENDING ; 
 scalar_t__ FM10K_ERR_REQUESTS_PENDING ; 
 scalar_t__ FM10K_ERR_RESET_FAILED ; 
 int /*<<< orphan*/  FM10K_INT_CTRL ; 
 int /*<<< orphan*/  FM10K_IP ; 
 int FM10K_IP_NOTINRESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM10K_MAX_QUEUES ; 
 int /*<<< orphan*/  FM10K_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FM10K_TQMAP_TABLE_SIZE ; 
 scalar_t__ FUNC4 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC9(struct fm10k_hw *hw)
{
	s32 err;
	u32 reg;
	u16 i;

	/* Disable interrupts */
	FUNC7(hw, FM10K_EIMR, FUNC0(ALL));

	/* Lock ITR2 reg 0 into itself and disable interrupt moderation */
	FUNC7(hw, FUNC1(0), 0);
	FUNC7(hw, FM10K_INT_CTRL, 0);

	/* We assume here Tx and Rx queue 0 are owned by the PF */

	/* Shut off VF access to their queues forcing them to queue 0 */
	for (i = 0; i < FM10K_TQMAP_TABLE_SIZE; i++) {
		FUNC7(hw, FUNC3(i), 0);
		FUNC7(hw, FUNC2(i), 0);
	}

	/* shut down all rings */
	err = FUNC4(hw, FM10K_MAX_QUEUES);
	if (err == FM10K_ERR_REQUESTS_PENDING) {
		hw->mac.reset_while_pending++;
		goto force_reset;
	} else if (err) {
		return err;
	}

	/* Verify that DMA is no longer active */
	reg = FUNC5(hw, FM10K_DMA_CTRL);
	if (reg & (FM10K_DMA_CTRL_TX_ACTIVE | FM10K_DMA_CTRL_RX_ACTIVE))
		return FM10K_ERR_DMA_PENDING;

force_reset:
	/* Inititate data path reset */
	reg = FM10K_DMA_CTRL_DATAPATH_RESET;
	FUNC7(hw, FM10K_DMA_CTRL, reg);

	/* Flush write and allow 100us for reset to complete */
	FUNC6(hw);
	FUNC8(FM10K_RESET_TIMEOUT);

	/* Verify we made it out of reset */
	reg = FUNC5(hw, FM10K_IP);
	if (!(reg & FM10K_IP_NOTINRESET))
		return FM10K_ERR_RESET_FAILED;

	return 0;
}