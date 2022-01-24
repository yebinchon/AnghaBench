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
struct devlink_health_reporter {int dummy; } ;
struct bnxt_fw_reporter_ctx {unsigned long sp_event; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 unsigned long BNXT_FW_EXCEPTION_SP_EVENT ; 
 unsigned long BNXT_FW_RESET_NOTIFY_SP_EVENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 struct bnxt* FUNC2 (struct devlink_health_reporter*) ; 

__attribute__((used)) static int FUNC3(struct devlink_health_reporter *reporter,
				 void *priv_ctx)
{
	struct bnxt *bp = FUNC2(reporter);
	struct bnxt_fw_reporter_ctx *fw_reporter_ctx = priv_ctx;
	unsigned long event;

	if (!priv_ctx)
		return -EOPNOTSUPP;

	event = fw_reporter_ctx->sp_event;
	if (event == BNXT_FW_RESET_NOTIFY_SP_EVENT)
		FUNC1(bp);
	else if (event == BNXT_FW_EXCEPTION_SP_EVENT)
		FUNC0(bp);

	return 0;
}