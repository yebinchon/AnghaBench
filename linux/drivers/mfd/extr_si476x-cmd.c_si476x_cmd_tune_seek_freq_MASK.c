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
typedef  int /*<<< orphan*/  uint8_t ;
struct si476x_core {int /*<<< orphan*/  stc; int /*<<< orphan*/  tuning; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI476X_TIMEOUT_TUNE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct si476x_core*) ; 
 int FUNC3 (struct si476x_core*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct si476x_core *core,
				     uint8_t cmd,
				     const uint8_t args[], size_t argn,
				     uint8_t *resp, size_t respn)
{
	int err;


	FUNC1(&core->stc, 0);
	err = FUNC3(core, cmd, args, argn, resp, respn,
				       SI476X_TIMEOUT_TUNE);
	if (!err) {
		FUNC4(core->tuning,
				    FUNC0(&core->stc));
		FUNC2(core);
	}

	return err;
}