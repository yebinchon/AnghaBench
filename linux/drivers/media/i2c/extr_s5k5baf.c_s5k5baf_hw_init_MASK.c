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
struct s5k5baf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHB_MSB_ADDR_PTR ; 
 int PAGE_IF_HW ; 
 int PAGE_IF_SW ; 
 int /*<<< orphan*/  REG_CLEAR_HOST_INT ; 
 int /*<<< orphan*/  REG_CMDRD_PAGE ; 
 int /*<<< orphan*/  REG_CMDWR_PAGE ; 
 int /*<<< orphan*/  REG_SW_LOAD_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct s5k5baf *state)
{
	FUNC0(state, AHB_MSB_ADDR_PTR, PAGE_IF_HW);
	FUNC0(state, REG_CLEAR_HOST_INT, 0);
	FUNC0(state, REG_SW_LOAD_COMPLETE, 1);
	FUNC0(state, REG_CMDRD_PAGE, PAGE_IF_SW);
	FUNC0(state, REG_CMDWR_PAGE, PAGE_IF_SW);
}