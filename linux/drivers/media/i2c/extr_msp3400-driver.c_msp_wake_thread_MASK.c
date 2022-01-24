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
struct msp_state {int restart; int /*<<< orphan*/  wq; scalar_t__ watch_stereo; int /*<<< orphan*/ * kthread; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 struct msp_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct msp_state *state = FUNC1(FUNC0(client));

	if (NULL == state->kthread)
		return;
	state->watch_stereo = 0;
	state->restart = 1;
	FUNC2(&state->wq);
}