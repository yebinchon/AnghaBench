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
struct fm10k_mbx_info {scalar_t__ state; int /*<<< orphan*/  tail; int /*<<< orphan*/  mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ FM10K_STATE_CONNECT ; 
 scalar_t__ FM10K_STATE_OPEN ; 
 int /*<<< orphan*/  HEAD ; 
 int /*<<< orphan*/  TAIL ; 
 scalar_t__ FUNC1 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 
 scalar_t__ FUNC3 (struct fm10k_hw*,struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct fm10k_mbx_info*) ; 

__attribute__((used)) static s32 FUNC5(struct fm10k_hw *hw,
				  struct fm10k_mbx_info *mbx)
{
	const u32 *hdr = &mbx->mbx_hdr;
	u16 head, tail;
	s32 err;

	/* we will need to pull all of the fields for verification */
	head = FUNC0(*hdr, HEAD);
	tail = FUNC0(*hdr, TAIL);

	/* if we are in connect just update our data and go */
	if (mbx->state == FM10K_STATE_CONNECT) {
		mbx->tail = head;
		mbx->state = FM10K_STATE_OPEN;
	}

	/* abort on message size errors */
	err = FUNC3(hw, mbx, tail);
	if (err < 0)
		return err;

	/* verify the checksum on the incoming data */
	err = FUNC4(mbx);
	if (err)
		return err;

	/* process messages if we have received any */
	FUNC2(hw, mbx);

	return FUNC1(hw, mbx, head);
}