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
struct sky2_hw {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PREF_UNIT_ADDR_HI ; 
 int /*<<< orphan*/  PREF_UNIT_ADDR_LO ; 
 int /*<<< orphan*/  PREF_UNIT_CTRL ; 
 int /*<<< orphan*/  PREF_UNIT_LAST_IDX ; 
 int /*<<< orphan*/  PREF_UNIT_OP_ON ; 
 int /*<<< orphan*/  PREF_UNIT_RST_CLR ; 
 int /*<<< orphan*/  PREF_UNIT_RST_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sky2_hw *hw, u32 qaddr,
			       dma_addr_t addr, u32 last)
{
	FUNC4(hw, FUNC0(qaddr, PREF_UNIT_CTRL), PREF_UNIT_RST_SET);
	FUNC4(hw, FUNC0(qaddr, PREF_UNIT_CTRL), PREF_UNIT_RST_CLR);
	FUNC4(hw, FUNC0(qaddr, PREF_UNIT_ADDR_HI), FUNC5(addr));
	FUNC4(hw, FUNC0(qaddr, PREF_UNIT_ADDR_LO), FUNC1(addr));
	FUNC3(hw, FUNC0(qaddr, PREF_UNIT_LAST_IDX), last);
	FUNC4(hw, FUNC0(qaddr, PREF_UNIT_CTRL), PREF_UNIT_OP_ON);

	FUNC2(hw, FUNC0(qaddr, PREF_UNIT_CTRL));
}