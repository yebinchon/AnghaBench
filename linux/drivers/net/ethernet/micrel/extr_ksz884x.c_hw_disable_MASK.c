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
struct ksz_hw {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw)
{
	FUNC0(hw);
	FUNC1(hw);
	hw->enabled = 0;
}