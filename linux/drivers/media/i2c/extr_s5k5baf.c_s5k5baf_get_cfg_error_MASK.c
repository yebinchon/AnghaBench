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
typedef  scalar_t__ u16 ;
struct s5k5baf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_G_PREV_CFG_ERROR ; 
 scalar_t__ FUNC0 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct s5k5baf *state)
{
	u16 err = FUNC0(state, REG_G_PREV_CFG_ERROR);
	if (err)
		FUNC1(state, REG_G_PREV_CFG_ERROR, 0);
	return err;
}