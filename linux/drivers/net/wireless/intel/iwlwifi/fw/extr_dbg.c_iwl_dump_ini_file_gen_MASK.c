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
typedef  scalar_t__ u32 ;
struct list_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* active_trigs; } ;
struct iwl_fw_runtime {TYPE_2__ dump; } ;
struct iwl_fw_ini_trigger {void* num_regions; } ;
struct iwl_fw_ini_dump_file_hdr {void* file_len; void* barker; } ;
struct iwl_fw_ini_dump_entry {int size; int /*<<< orphan*/  list; scalar_t__ data; } ;
typedef  enum iwl_fw_ini_trigger_id { ____Placeholder_iwl_fw_ini_trigger_id } iwl_fw_ini_trigger_id ;
struct TYPE_3__ {struct iwl_fw_ini_trigger* trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IWL_FW_INI_ERROR_DUMP_BARKER ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct iwl_fw_runtime*,struct iwl_fw_ini_trigger*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_fw_runtime*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_fw_ini_dump_entry*) ; 
 struct iwl_fw_ini_dump_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static u32 FUNC7(struct iwl_fw_runtime *fwrt,
				 enum iwl_fw_ini_trigger_id trig_id,
				 struct list_head *list)
{
	struct iwl_fw_ini_dump_entry *entry;
	struct iwl_fw_ini_dump_file_hdr *hdr;
	struct iwl_fw_ini_trigger *trigger;
	u32 size;

	if (!FUNC2(fwrt, trig_id))
		return 0;

	trigger = fwrt->dump.active_trigs[trig_id].trig;
	if (!trigger || !FUNC5(trigger->num_regions))
		return 0;

	entry = FUNC4(sizeof(*entry) + sizeof(*hdr), GFP_KERNEL);
	if (!entry)
		return 0;

	entry->size = sizeof(*hdr);

	size = FUNC1(fwrt, trigger, list);
	if (!size) {
		FUNC3(entry);
		return 0;
	}

	hdr = (void *)entry->data;
	hdr->barker = FUNC0(IWL_FW_INI_ERROR_DUMP_BARKER);
	hdr->file_len = FUNC0(size + entry->size);

	FUNC6(&entry->list, list);

	return FUNC5(hdr->file_len);
}