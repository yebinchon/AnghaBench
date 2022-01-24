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
struct s3c2410_nand_info {scalar_t__ clk_state; int /*<<< orphan*/  clk; } ;
typedef  enum s3c_nand_clk_state { ____Placeholder_s3c_nand_clk_state } s3c_nand_clk_state ;

/* Variables and functions */
 scalar_t__ CLOCK_ENABLE ; 
 int CLOCK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_nand_info *info,
		enum s3c_nand_clk_state new_state)
{
	if (!FUNC0(info) && new_state == CLOCK_SUSPEND)
		return;

	if (info->clk_state == CLOCK_ENABLE) {
		if (new_state != CLOCK_ENABLE)
			FUNC1(info->clk);
	} else {
		if (new_state == CLOCK_ENABLE)
			FUNC2(info->clk);
	}

	info->clk_state = new_state;
}