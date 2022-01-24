#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_10__ {scalar_t__ monitor_only; } ;
struct iwl_fw_runtime {TYPE_7__* trans; TYPE_3__ dump; TYPE_2__* fw; } ;
struct iwl_fw_error_dump_file {int /*<<< orphan*/  file_len; } ;
struct iwl_fw_dump_ptrs {TYPE_4__* trans_ptr; TYPE_4__* fwrt_ptr; scalar_t__ fwrt_len; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {scalar_t__ len; struct TYPE_11__* data; } ;
struct TYPE_8__ {scalar_t__ dump_mask; } ;
struct TYPE_9__ {TYPE_1__ dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IWL_FW_ERROR_DUMP_FW_MONITOR ; 
 struct scatterlist* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct iwl_fw_error_dump_file* FUNC3 (struct iwl_fw_runtime*,struct iwl_fw_dump_ptrs*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_fw_runtime*) ; 
 TYPE_4__* FUNC5 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC10(struct iwl_fw_runtime *fwrt)
{
	struct iwl_fw_dump_ptrs fw_error_dump = {};
	struct iwl_fw_error_dump_file *dump_file;
	struct scatterlist *sg_dump_data;
	u32 file_len;
	u32 dump_mask = fwrt->fw->dbg.dump_mask;

	dump_file = FUNC3(fwrt, &fw_error_dump);
	if (!dump_file)
		goto out;

	if (fwrt->dump.monitor_only)
		dump_mask &= IWL_FW_ERROR_DUMP_FW_MONITOR;

	fw_error_dump.trans_ptr = FUNC5(fwrt->trans, dump_mask);
	file_len = FUNC6(dump_file->file_len);
	fw_error_dump.fwrt_len = file_len;

	if (fw_error_dump.trans_ptr) {
		file_len += fw_error_dump.trans_ptr->len;
		dump_file->file_len = FUNC1(file_len);
	}

	sg_dump_data = FUNC0(file_len);
	if (sg_dump_data) {
		FUNC8(sg_dump_data,
				     FUNC7(sg_dump_data),
				     fw_error_dump.fwrt_ptr,
				     fw_error_dump.fwrt_len, 0);
		if (fw_error_dump.trans_ptr)
			FUNC8(sg_dump_data,
					     FUNC7(sg_dump_data),
					     fw_error_dump.trans_ptr->data,
					     fw_error_dump.trans_ptr->len,
					     fw_error_dump.fwrt_len);
		FUNC2(fwrt->trans->dev, sg_dump_data, file_len,
			       GFP_KERNEL);
	}
	FUNC9(fw_error_dump.fwrt_ptr);
	FUNC9(fw_error_dump.trans_ptr);

out:
	FUNC4(fwrt);
}