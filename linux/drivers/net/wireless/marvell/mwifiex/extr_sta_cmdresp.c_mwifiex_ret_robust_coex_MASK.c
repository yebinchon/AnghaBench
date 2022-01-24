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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_types_robust_coex {int /*<<< orphan*/  mode; } ;
struct host_cmd_ds_robust_coex {int /*<<< orphan*/  action; } ;
struct TYPE_2__ {struct host_cmd_ds_robust_coex coex; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ HostCmd_ACT_GEN_GET ; 
 scalar_t__ MWIFIEX_COEX_MODE_TIMESHARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
				   struct host_cmd_ds_command *resp,
				   bool *is_timeshare)
{
	struct host_cmd_ds_robust_coex *coex = &resp->params.coex;
	struct mwifiex_ie_types_robust_coex *coex_tlv;
	u16 action = FUNC0(coex->action);
	u32 mode;

	coex_tlv = (struct mwifiex_ie_types_robust_coex
		    *)((u8 *)coex + sizeof(struct host_cmd_ds_robust_coex));
	if (action == HostCmd_ACT_GEN_GET) {
		mode = FUNC1(coex_tlv->mode);
		if (mode == MWIFIEX_COEX_MODE_TIMESHARE)
			*is_timeshare = true;
		else
			*is_timeshare = false;
	}

	return 0;
}