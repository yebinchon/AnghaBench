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
typedef  int /*<<< orphan*/  u32 ;
struct mci_result {int dummy; } ;
struct mci_command {int dummy; } ;
struct mci {TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mci_lock; } ;

/* Variables and functions */
 int FUNC0 (struct mci*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mci *state,
		struct mci_command *command,
		struct mci_result *result)
{
	int stat;

	FUNC1(&state->base->mci_lock);
	stat = FUNC0(state,
				 (u32 *)command, sizeof(*command) / sizeof(u32),
				 (u32 *)result,	sizeof(*result) / sizeof(u32));
	FUNC2(&state->base->mci_lock);
	return stat;
}