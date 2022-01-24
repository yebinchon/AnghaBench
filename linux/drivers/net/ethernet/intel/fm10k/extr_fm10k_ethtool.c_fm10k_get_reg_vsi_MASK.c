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
 int FM10K_REGS_LEN_VSI ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fm10k_hw *hw, u32 *buff, int i)
{
	int idx = 0, j;

	buff[idx++] = FUNC4(hw, FUNC1(i));
	for (j = 0; j < 10; j++)
		buff[idx++] = FUNC4(hw, FUNC3(i, j));
	for (j = 0; j < 32; j++)
		buff[idx++] = FUNC4(hw, FUNC2(i, j));

	FUNC0(idx != FM10K_REGS_LEN_VSI);
}