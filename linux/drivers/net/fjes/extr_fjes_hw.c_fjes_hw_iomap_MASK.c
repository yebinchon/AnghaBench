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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct fjes_hw {TYPE_1__ hw_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  fjes_driver_name ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 *FUNC3(struct fjes_hw *hw)
{
	u8 *base;

	if (!FUNC2(hw->hw_res.start, hw->hw_res.size,
				fjes_driver_name)) {
		FUNC1("request_mem_region failed\n");
		return NULL;
	}

	base = (u8 *)FUNC0(hw->hw_res.start, hw->hw_res.size);

	return base;
}