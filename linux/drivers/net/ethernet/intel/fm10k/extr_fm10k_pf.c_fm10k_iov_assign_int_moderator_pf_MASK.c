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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ num_vfs; } ;
struct fm10k_hw {TYPE_1__ iov; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct fm10k_hw*) ; 
 scalar_t__ FUNC4 (struct fm10k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static s32 FUNC6(struct fm10k_hw *hw, u16 vf_idx)
{
	u16 vf_v_idx, vf_v_limit, i;

	/* verify vf is in range */
	if (vf_idx >= hw->iov.num_vfs)
		return FM10K_ERR_PARAM;

	/* determine vector offset and count */
	vf_v_idx = FUNC4(hw, vf_idx);
	vf_v_limit = vf_v_idx + FUNC3(hw);

	/* search for first vector that is not masked */
	for (i = vf_v_limit - 1; i > vf_v_idx; i--) {
		if (!FUNC2(hw, FUNC1(i)))
			break;
	}

	/* reset linked list so it now includes our active vectors */
	if (vf_idx == (hw->iov.num_vfs - 1))
		FUNC5(hw, FUNC0(0), i);
	else
		FUNC5(hw, FUNC0(vf_v_limit), i);

	return 0;
}