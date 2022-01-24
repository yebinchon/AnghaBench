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
typedef  int /*<<< orphan*/  u16 ;
struct s5k5baf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_IF_HW ; 
 int /*<<< orphan*/  PAGE_IF_SW ; 
 int /*<<< orphan*/  REG_CMDWR_PAGE ; 
 int /*<<< orphan*/  S5K5BAF_FW_ID_CIS ; 
 int /*<<< orphan*/ * FUNC0 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5k5baf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct s5k5baf *state)
{
	u16 *seq = FUNC0(state, S5K5BAF_FW_ID_CIS);

	if (!seq)
		return;

	FUNC1(state, REG_CMDWR_PAGE, PAGE_IF_HW);
	FUNC2(state, seq);
	FUNC1(state, REG_CMDWR_PAGE, PAGE_IF_SW);
}