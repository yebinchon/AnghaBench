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
struct bnx2x_func_state_params {int cmd; unsigned long ramrod_flags; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {unsigned long pending; int (* check_transition ) (struct bnx2x*,struct bnx2x_func_sp_obj*,struct bnx2x_func_state_params*) ;int (* send_cmd ) (struct bnx2x*,struct bnx2x_func_state_params*) ;int (* wait_comp ) (struct bnx2x*,struct bnx2x_func_sp_obj*,int) ;int /*<<< orphan*/  next_state; int /*<<< orphan*/  one_pending_mutex; } ;
struct bnx2x {int dummy; } ;
typedef  enum bnx2x_func_cmd { ____Placeholder_bnx2x_func_cmd } bnx2x_func_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_F_STATE_MAX ; 
 int EBUSY ; 
 int RAMROD_COMP_WAIT ; 
 int RAMROD_DRV_CLR_ONLY ; 
 int RAMROD_RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_func_sp_obj*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct bnx2x*,struct bnx2x_func_sp_obj*,struct bnx2x_func_state_params*) ; 
 int FUNC9 (struct bnx2x*,struct bnx2x_func_sp_obj*,struct bnx2x_func_state_params*) ; 
 int FUNC10 (struct bnx2x*,struct bnx2x_func_state_params*) ; 
 int FUNC11 (struct bnx2x*,struct bnx2x_func_sp_obj*,int) ; 
 scalar_t__ FUNC12 (int,unsigned long*) ; 

int FUNC13(struct bnx2x *bp,
			    struct bnx2x_func_state_params *params)
{
	struct bnx2x_func_sp_obj *o = params->f_obj;
	int rc, cnt = 300;
	enum bnx2x_func_cmd cmd = params->cmd;
	unsigned long *pending = &o->pending;

	FUNC4(&o->one_pending_mutex);

	/* Check that the requested transition is legal */
	rc = o->check_transition(bp, o, params);
	if ((rc == -EBUSY) &&
	    (FUNC12(RAMROD_RETRY, &params->ramrod_flags))) {
		while ((rc == -EBUSY) && (--cnt > 0)) {
			FUNC5(&o->one_pending_mutex);
			FUNC3(10);
			FUNC4(&o->one_pending_mutex);
			rc = o->check_transition(bp, o, params);
		}
		if (rc == -EBUSY) {
			FUNC5(&o->one_pending_mutex);
			FUNC0("timeout waiting for previous ramrod completion\n");
			return rc;
		}
	} else if (rc) {
		FUNC5(&o->one_pending_mutex);
		return rc;
	}

	/* Set "pending" bit */
	FUNC6(cmd, pending);

	/* Don't send a command if only driver cleanup was requested */
	if (FUNC12(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
		FUNC1(bp, o, cmd);
		FUNC5(&o->one_pending_mutex);
	} else {
		/* Send a ramrod */
		rc = o->send_cmd(bp, params);

		FUNC5(&o->one_pending_mutex);

		if (rc) {
			o->next_state = BNX2X_F_STATE_MAX;
			FUNC2(cmd, pending);
			FUNC7();
			return rc;
		}

		if (FUNC12(RAMROD_COMP_WAIT, &params->ramrod_flags)) {
			rc = o->wait_comp(bp, o, cmd);
			if (rc)
				return rc;

			return 0;
		}
	}

	return !!FUNC12(cmd, pending);
}