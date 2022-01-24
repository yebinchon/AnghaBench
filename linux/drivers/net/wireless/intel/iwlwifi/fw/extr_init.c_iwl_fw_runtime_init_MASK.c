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
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_fw_runtime_ops {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wks; int /*<<< orphan*/  conf; } ;
struct iwl_fw_runtime {TYPE_2__ dump; void* ops_ctx; struct iwl_fw_runtime_ops const* ops; int /*<<< orphan*/  dev; struct iwl_fw const* fw; struct iwl_trans* trans; } ;
struct iwl_fw {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int idx; int /*<<< orphan*/  wk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DBG_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IWL_FW_RUNTIME_DUMP_WK_NUM ; 
 int /*<<< orphan*/  iwl_fw_error_dump_wk ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_fw_runtime*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct iwl_fw_runtime *fwrt, struct iwl_trans *trans,
			const struct iwl_fw *fw,
			const struct iwl_fw_runtime_ops *ops, void *ops_ctx,
			struct dentry *dbgfs_dir)
{
	int i;

	FUNC2(fwrt, 0, sizeof(*fwrt));
	fwrt->trans = trans;
	fwrt->fw = fw;
	fwrt->dev = trans->dev;
	fwrt->dump.conf = FW_DBG_INVALID;
	fwrt->ops = ops;
	fwrt->ops_ctx = ops_ctx;
	for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++) {
		fwrt->dump.wks[i].idx = i;
		FUNC0(&fwrt->dump.wks[i].wk, iwl_fw_error_dump_wk);
	}
	FUNC1(fwrt, dbgfs_dir);
}