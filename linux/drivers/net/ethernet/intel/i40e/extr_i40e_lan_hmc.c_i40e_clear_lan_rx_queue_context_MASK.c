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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
typedef  scalar_t__ i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_HMC_LAN_RX ; 
 scalar_t__ FUNC0 (struct i40e_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_hw*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

i40e_status FUNC2(struct i40e_hw *hw,
						      u16 queue)
{
	i40e_status err;
	u8 *context_bytes;

	err = FUNC1(hw, &context_bytes,
				     I40E_HMC_LAN_RX, queue);
	if (err < 0)
		return err;

	return FUNC0(hw, context_bytes, I40E_HMC_LAN_RX);
}