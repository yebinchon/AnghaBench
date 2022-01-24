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
struct s5k5baf {scalar_t__ apply_crop; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_G_INPUTS_CHANGE_REQ ; 
 int /*<<< orphan*/  REG_G_NEW_CFG_SYNC ; 
 int /*<<< orphan*/  REG_G_PREV_CFG_BYPASS_CHANGED ; 
 int /*<<< orphan*/  REG_G_PREV_CFG_CHG ; 
 int /*<<< orphan*/  FUNC0 (struct s5k5baf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct s5k5baf *state)
{
	FUNC1(state, REG_G_PREV_CFG_CHG, 1);
	if (state->apply_crop) {
		FUNC1(state, REG_G_INPUTS_CHANGE_REQ, 1);
		FUNC1(state, REG_G_PREV_CFG_BYPASS_CHANGED, 1);
	}
	FUNC0(state, 500, REG_G_NEW_CFG_SYNC);
}