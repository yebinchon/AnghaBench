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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  can_dump_fw; struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {unsigned int fw_dump_start; unsigned int fw_dump_end; int /*<<< orphan*/  fw_dump_read_done; int /*<<< orphan*/  fw_dump_ctrl; } ;
struct mwifiex_adapter {size_t num_mem_types; struct memory_type_mapping* mem_type_mapping_tbl; struct pcie_service_card* card; } ;
struct memory_type_mapping {size_t* mem_ptr; size_t mem_size; size_t done_flag; int /*<<< orphan*/  mem_name; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MSG ; 
 size_t MWIFIEX_FW_DUMP_MAX_MEMSIZE ; 
 size_t MWIFIEX_SIZE_4K ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct mwifiex_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,unsigned int,size_t*) ; 
 int FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t*) ; 
 size_t* FUNC6 (size_t) ; 
 size_t* FUNC7 (size_t) ; 

__attribute__((used)) static void FUNC8(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *creg = card->pcie.reg;
	unsigned int reg, reg_start, reg_end;
	u8 *dbg_ptr, *end_ptr, *tmp_ptr, fw_dump_num, dump_num;
	u8 idx, i, read_reg, doneflag = 0;
	enum rdwr_status stat;
	u32 memory_size;
	int ret;

	if (!card->pcie.can_dump_fw)
		return;

	for (idx = 0; idx < adapter->num_mem_types; idx++) {
		struct memory_type_mapping *entry =
				&adapter->mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			FUNC5(entry->mem_ptr);
			entry->mem_ptr = NULL;
		}
		entry->mem_size = 0;
	}

	FUNC1(adapter, MSG, "== mwifiex firmware dump start ==\n");

	/* Read the number of the memories which will dump */
	stat = FUNC2(adapter, doneflag);
	if (stat == RDWR_STATUS_FAILURE)
		return;

	reg = creg->fw_dump_start;
	FUNC3(adapter, reg, &fw_dump_num);

	/* W8997 chipset firmware dump will be restore in single region*/
	if (fw_dump_num == 0)
		dump_num = 1;
	else
		dump_num = fw_dump_num;

	/* Read the length of every memory which will dump */
	for (idx = 0; idx < dump_num; idx++) {
		struct memory_type_mapping *entry =
				&adapter->mem_type_mapping_tbl[idx];
		memory_size = 0;
		if (fw_dump_num != 0) {
			stat = FUNC2(adapter, doneflag);
			if (stat == RDWR_STATUS_FAILURE)
				return;

			reg = creg->fw_dump_start;
			for (i = 0; i < 4; i++) {
				FUNC3(adapter, reg, &read_reg);
				memory_size |= (read_reg << (i * 8));
				reg++;
			}
		} else {
			memory_size = MWIFIEX_FW_DUMP_MAX_MEMSIZE;
		}

		if (memory_size == 0) {
			FUNC1(adapter, MSG, "Firmware dump Finished!\n");
			ret = FUNC4(adapter, creg->fw_dump_ctrl,
						creg->fw_dump_read_done);
			if (ret) {
				FUNC1(adapter, ERROR, "PCIE write err\n");
				return;
			}
			break;
		}

		FUNC1(adapter, DUMP,
			    "%s_SIZE=0x%x\n", entry->mem_name, memory_size);
		entry->mem_ptr = FUNC6(memory_size + 1);
		entry->mem_size = memory_size;
		if (!entry->mem_ptr) {
			FUNC1(adapter, ERROR,
				    "Vmalloc %s failed\n", entry->mem_name);
			return;
		}
		dbg_ptr = entry->mem_ptr;
		end_ptr = dbg_ptr + memory_size;

		doneflag = entry->done_flag;
		FUNC1(adapter, DUMP, "Start %s output, please wait...\n",
			    entry->mem_name);

		do {
			stat = FUNC2(adapter, doneflag);
			if (RDWR_STATUS_FAILURE == stat)
				return;

			reg_start = creg->fw_dump_start;
			reg_end = creg->fw_dump_end;
			for (reg = reg_start; reg <= reg_end; reg++) {
				FUNC3(adapter, reg, dbg_ptr);
				if (dbg_ptr < end_ptr) {
					dbg_ptr++;
					continue;
				}
				FUNC1(adapter, ERROR,
					    "pre-allocated buf not enough\n");
				tmp_ptr =
					FUNC7(memory_size + MWIFIEX_SIZE_4K);
				if (!tmp_ptr)
					return;
				FUNC0(tmp_ptr, entry->mem_ptr, memory_size);
				FUNC5(entry->mem_ptr);
				entry->mem_ptr = tmp_ptr;
				tmp_ptr = NULL;
				dbg_ptr = entry->mem_ptr + memory_size;
				memory_size += MWIFIEX_SIZE_4K;
				end_ptr = entry->mem_ptr + memory_size;
			}

			if (stat != RDWR_STATUS_DONE)
				continue;

			FUNC1(adapter, DUMP,
				    "%s done: size=0x%tx\n",
				    entry->mem_name, dbg_ptr - entry->mem_ptr);
			break;
		} while (true);
	}
	FUNC1(adapter, MSG, "== mwifiex firmware dump end ==\n");
}