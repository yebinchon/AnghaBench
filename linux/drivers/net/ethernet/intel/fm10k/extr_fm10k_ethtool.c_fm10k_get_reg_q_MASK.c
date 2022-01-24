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
struct fm10k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FM10K_REGS_LEN_Q ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC31(struct fm10k_hw *hw, u32 *buff, int i)
{
	int idx = 0;

	buff[idx++] = FUNC30(hw, FUNC10(i));
	buff[idx++] = FUNC30(hw, FUNC9(i));
	buff[idx++] = FUNC30(hw, FUNC12(i));
	buff[idx++] = FUNC30(hw, FUNC23(i));
	buff[idx++] = FUNC30(hw, FUNC11(i));
	buff[idx++] = FUNC30(hw, FUNC13(i));
	buff[idx++] = FUNC30(hw, FUNC16(i));
	buff[idx++] = FUNC30(hw, FUNC14(i));
	buff[idx++] = FUNC30(hw, FUNC15(i));
	buff[idx++] = FUNC30(hw, FUNC17(i));
	buff[idx++] = FUNC30(hw, FUNC6(i));
	buff[idx++] = FUNC30(hw, FUNC7(i));
	buff[idx++] = FUNC30(hw, FUNC3(i));
	buff[idx++] = FUNC30(hw, FUNC2(i));
	buff[idx++] = FUNC30(hw, FUNC19(i));
	buff[idx++] = FUNC30(hw, FUNC18(i));
	buff[idx++] = FUNC30(hw, FUNC21(i));
	buff[idx++] = FUNC30(hw, FUNC24(i));
	buff[idx++] = FUNC30(hw, FUNC20(i));
	buff[idx++] = FUNC30(hw, FUNC22(i));
	buff[idx++] = FUNC30(hw, FUNC26(i));
	buff[idx++] = FUNC30(hw, FUNC28(i));
	buff[idx++] = FUNC30(hw, FUNC27(i));
	buff[idx++] = FUNC30(hw, FUNC8(i));
	buff[idx++] = FUNC30(hw, FUNC5(i));
	buff[idx++] = FUNC30(hw, FUNC4(i));
	buff[idx++] = FUNC30(hw, FUNC25(i));
	buff[idx++] = FUNC30(hw, FUNC29(i));
	buff[idx++] = FUNC30(hw, FUNC1(i));

	FUNC0(idx != FM10K_REGS_LEN_Q);
}