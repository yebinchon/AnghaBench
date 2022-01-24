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
struct sdio_mmc_card {int /*<<< orphan*/  func; TYPE_1__* reg; int /*<<< orphan*/  can_dump_fw; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct memory_type_mapping {size_t* mem_ptr; size_t mem_size; size_t done_flag; int /*<<< orphan*/  mem_name; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_2__ {unsigned int fw_dump_start; unsigned int fw_dump_end; int /*<<< orphan*/  fw_dump_ctrl; } ;

/* Variables and functions */
 size_t FUNC0 (struct memory_type_mapping*) ; 
 int /*<<< orphan*/  DUMP ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FW_DUMP_READ_DONE ; 
 int /*<<< orphan*/  MSG ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 struct memory_type_mapping* mem_type_mapping_tbl ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int FUNC3 (struct mwifiex_adapter*,size_t) ; 
 int FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t*) ; 
 size_t* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;
	int ret = 0;
	unsigned int reg, reg_start, reg_end;
	u8 *dbg_ptr, *end_ptr, dump_num, idx, i, read_reg, doneflag = 0;
	enum rdwr_status stat;
	u32 memory_size;

	if (!card->can_dump_fw)
		return;

	for (idx = 0; idx < FUNC0(mem_type_mapping_tbl); idx++) {
		struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			FUNC8(entry->mem_ptr);
			entry->mem_ptr = NULL;
		}
		entry->mem_size = 0;
	}

	FUNC2(adapter);
	FUNC5(card->func);

	FUNC1(adapter, MSG, "== mwifiex firmware dump start ==\n");

	stat = FUNC3(adapter, doneflag);
	if (stat == RDWR_STATUS_FAILURE)
		goto done;

	reg = card->reg->fw_dump_start;
	/* Read the number of the memories which will dump */
	dump_num = FUNC6(card->func, reg, &ret);
	if (ret) {
		FUNC1(adapter, ERROR, "SDIO read memory length err\n");
		goto done;
	}

	/* Read the length of every memory which will dump */
	for (idx = 0; idx < dump_num; idx++) {
		struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

		stat = FUNC3(adapter, doneflag);
		if (stat == RDWR_STATUS_FAILURE)
			goto done;

		memory_size = 0;
		reg = card->reg->fw_dump_start;
		for (i = 0; i < 4; i++) {
			read_reg = FUNC6(card->func, reg, &ret);
			if (ret) {
				FUNC1(adapter, ERROR, "SDIO read err\n");
				goto done;
			}
			memory_size |= (read_reg << i*8);
			reg++;
		}

		if (memory_size == 0) {
			FUNC1(adapter, DUMP, "Firmware dump Finished!\n");
			ret = FUNC4(adapter,
						card->reg->fw_dump_ctrl,
						FW_DUMP_READ_DONE);
			if (ret) {
				FUNC1(adapter, ERROR, "SDIO write err\n");
				return;
			}
			break;
		}

		FUNC1(adapter, DUMP,
			    "%s_SIZE=0x%x\n", entry->mem_name, memory_size);
		entry->mem_ptr = FUNC9(memory_size + 1);
		entry->mem_size = memory_size;
		if (!entry->mem_ptr) {
			FUNC1(adapter, ERROR, "Vmalloc %s failed\n",
				    entry->mem_name);
			goto done;
		}
		dbg_ptr = entry->mem_ptr;
		end_ptr = dbg_ptr + memory_size;

		doneflag = entry->done_flag;
		FUNC1(adapter, DUMP,
			    "Start %s output, please wait...\n",
			    entry->mem_name);

		do {
			stat = FUNC3(adapter, doneflag);
			if (stat == RDWR_STATUS_FAILURE)
				goto done;

			reg_start = card->reg->fw_dump_start;
			reg_end = card->reg->fw_dump_end;
			for (reg = reg_start; reg <= reg_end; reg++) {
				*dbg_ptr = FUNC6(card->func, reg, &ret);
				if (ret) {
					FUNC1(adapter, ERROR,
						    "SDIO read err\n");
					goto done;
				}
				if (dbg_ptr < end_ptr)
					dbg_ptr++;
				else
					FUNC1(adapter, ERROR,
						    "Allocated buf not enough\n");
			}

			if (stat != RDWR_STATUS_DONE)
				continue;

			FUNC1(adapter, DUMP, "%s done: size=0x%tx\n",
				    entry->mem_name, dbg_ptr - entry->mem_ptr);
			break;
		} while (1);
	}
	FUNC1(adapter, MSG, "== mwifiex firmware dump end ==\n");

done:
	FUNC7(card->func);
}