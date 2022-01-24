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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ; 
 int /*<<< orphan*/  EXTCNF_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct e1000_hw *hw)
{
	u32 extcnf_ctrl;

	extcnf_ctrl = FUNC0(EXTCNF_CTRL);
	extcnf_ctrl &= ~E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
	FUNC1(EXTCNF_CTRL, extcnf_ctrl);
}