#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
struct cxl_context {unsigned long long pe; TYPE_3__* afu; TYPE_1__* elem; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* link_ok ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_2__* native; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/ * sw_command_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  software_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_LLCMD_An ; 
 unsigned long long CXL_SPA_SW_CMD_MASK ; 
 unsigned long long CXL_SPA_SW_LINK_MASK ; 
 unsigned long long CXL_SPA_SW_STATE_MASK ; 
 unsigned long CXL_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 
 TYPE_5__* cxl_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct cxl_context*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (struct cxl_context*,unsigned long long,int) ; 

__attribute__((used)) static int FUNC14(struct cxl_context *ctx,
				  u64 cmd, u64 pe_state)
{
	u64 state;
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
	int rc = 0;

	FUNC12(ctx, cmd);

	FUNC0(!ctx->afu->enabled);

	ctx->elem->software_state = FUNC2(pe_state);
	FUNC9();
	*(ctx->afu->native->sw_command_status) = FUNC3(cmd | 0 | ctx->pe);
	FUNC8();
	FUNC4(ctx->afu, CXL_PSL_LLCMD_An, cmd | ctx->pe);
	while (1) {
		if (FUNC11(jiffies, timeout)) {
			FUNC5(&ctx->afu->dev, "WARNING: Process Element Command timed out!\n");
			rc = -EBUSY;
			goto out;
		}
		if (!cxl_ops->link_ok(ctx->afu->adapter, ctx->afu)) {
			FUNC5(&ctx->afu->dev, "WARNING: Device link down, aborting Process Element Command!\n");
			rc = -EIO;
			goto out;
		}
		state = FUNC1(ctx->afu->native->sw_command_status);
		if (state == ~0ULL) {
			FUNC6("cxl: Error adding process element to AFU\n");
			rc = -1;
			goto out;
		}
		if ((state & (CXL_SPA_SW_CMD_MASK | CXL_SPA_SW_STATE_MASK  | CXL_SPA_SW_LINK_MASK)) ==
		    (cmd | (cmd >> 16) | ctx->pe))
			break;
		/*
		 * The command won't finish in the PSL if there are
		 * outstanding DSIs.  Hence we need to yield here in
		 * case there are outstanding DSIs that we need to
		 * service.  Tuning possiblity: we could wait for a
		 * while before sched
		 */
		FUNC7();

	}
out:
	FUNC13(ctx, cmd, rc);
	return rc;
}