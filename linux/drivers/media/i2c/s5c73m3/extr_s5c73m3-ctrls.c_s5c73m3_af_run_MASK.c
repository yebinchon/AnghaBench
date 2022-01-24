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
struct s5c73m3_ctrls {TYPE_1__* focus_auto; } ;
struct s5c73m3 {struct s5c73m3_ctrls ctrls; } ;
struct TYPE_2__ {scalar_t__ val; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_AF_CON ; 
 int /*<<< orphan*/  COMM_AF_CON_START ; 
 int /*<<< orphan*/  COMM_AF_CON_STOP ; 
 int /*<<< orphan*/  COMM_AF_MODE ; 
 int /*<<< orphan*/  COMM_AF_MODE_PREVIEW_CAF_START ; 
 int FUNC0 (struct s5c73m3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct s5c73m3 *state, bool on)
{
	struct s5c73m3_ctrls *c = &state->ctrls;

	if (!on)
		return FUNC0(state, COMM_AF_CON,
							COMM_AF_CON_STOP);

	if (c->focus_auto->val)
		return FUNC0(state, COMM_AF_MODE,
					   COMM_AF_MODE_PREVIEW_CAF_START);

	return FUNC0(state, COMM_AF_CON, COMM_AF_CON_START);
}