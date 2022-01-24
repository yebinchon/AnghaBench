#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* fe; } ;
struct qm1d1c0042_state {TYPE_2__ cfg; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tuner_priv; } ;

/* Variables and functions */
 struct qm1d1c0042_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm1d1c0042_state*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct qm1d1c0042_state *state;

	state = FUNC0(FUNC1(client));
	state->cfg.fe->tuner_priv = NULL;
	FUNC2(state);
	return 0;
}