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
struct fm10k_hw {int /*<<< orphan*/  hw_addr; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_hw*) ; 

__attribute__((used)) static int FUNC2(struct fm10k_intfc *interface)
{
	struct fm10k_hw *hw = &interface->hw;

	FUNC1(hw);

	return FUNC0(hw->hw_addr) ? -ENODEV : 0;
}