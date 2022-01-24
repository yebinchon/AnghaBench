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
struct ice_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICE_SW_BLK_IDX ; 
 int /*<<< orphan*/  ICE_SW_BLK_INP_MASK_H ; 
 int /*<<< orphan*/  ICE_SW_BLK_INP_MASK_L ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ice_hw *hw)
{
#define ICE_SW_BLK_INP_MASK_L 0xFFFFFFFF
#define ICE_SW_BLK_INP_MASK_H 0x0000FFFF
#define ICE_SW_BLK_IDX	0

	/* setup Switch block input mask, which is 48-bits in two parts */
	FUNC2(hw, FUNC0(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_L);
	FUNC2(hw, FUNC1(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_H);
}