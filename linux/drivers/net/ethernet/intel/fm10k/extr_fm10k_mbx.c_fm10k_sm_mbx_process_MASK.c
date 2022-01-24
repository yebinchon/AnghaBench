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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  FM10K_SM_MBX_VERSION 128 
 scalar_t__ FM10K_STATE_CLOSED ; 
 int /*<<< orphan*/  SM_ERR ; 
 int /*<<< orphan*/  SM_VER ; 
 scalar_t__ FUNC1 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_mbx_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC5 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC6 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC7 (struct fm10k_mbx_info*) ; 

__attribute__((used)) static s32 FUNC8(struct fm10k_hw *hw,
				struct fm10k_mbx_info *mbx)
{
	s32 err;

	/* we do not read mailbox if closed */
	if (mbx->state == FM10K_STATE_CLOSED)
		return 0;

	/* retrieve data from switch manager */
	err = FUNC1(hw, mbx);
	if (err)
		return err;

	err = FUNC7(mbx);
	if (err < 0)
		goto fifo_err;

	if (FUNC0(mbx->mbx_hdr, SM_ERR)) {
		FUNC4(mbx);
		goto fifo_err;
	}

	switch (FUNC0(mbx->mbx_hdr, SM_VER)) {
	case 0:
		err = FUNC5(hw, mbx);
		break;
	case FM10K_SM_MBX_VERSION:
		err = FUNC6(hw, mbx);
		break;
	}

fifo_err:
	if (err < 0)
		FUNC3(mbx, err);

	/* report data to switch manager */
	FUNC2(hw, mbx);

	return err;
}