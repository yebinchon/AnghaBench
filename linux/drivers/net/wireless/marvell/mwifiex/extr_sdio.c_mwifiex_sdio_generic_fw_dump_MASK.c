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
typedef  scalar_t__ u8 ;
struct sdio_mmc_card {int /*<<< orphan*/  func; TYPE_1__* reg; int /*<<< orphan*/  fw_dump_enh; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct memory_type_mapping {scalar_t__* mem_ptr; int mem_size; scalar_t__ done_flag; int /*<<< orphan*/  mem_name; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_2__ {unsigned int fw_dump_start; unsigned int fw_dump_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP ; 
 int /*<<< orphan*/  ERROR ; 
 int MAX_POLL_TRIES ; 
 int /*<<< orphan*/  MSG ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 struct memory_type_mapping* generic_mem_type_map ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int FUNC3 (struct mwifiex_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;
	struct memory_type_mapping *entry = &generic_mem_type_map[0];
	unsigned int reg, reg_start, reg_end;
	u8 start_flag = 0, done_flag = 0;
	u8 *dbg_ptr, *end_ptr;
	enum rdwr_status stat;
	int ret = -1, tries;

	if (!card->fw_dump_enh)
		return;

	if (entry->mem_ptr) {
		FUNC8(entry->mem_ptr);
		entry->mem_ptr = NULL;
	}
	entry->mem_size = 0;

	FUNC2(adapter);
	FUNC4(card->func);

	FUNC1(adapter, MSG, "== mwifiex firmware dump start ==\n");

	stat = FUNC3(adapter, done_flag);
	if (stat == RDWR_STATUS_FAILURE)
		goto done;

	reg_start = card->reg->fw_dump_start;
	reg_end = card->reg->fw_dump_end;
	for (reg = reg_start; reg <= reg_end; reg++) {
		for (tries = 0; tries < MAX_POLL_TRIES; tries++) {
			start_flag = FUNC5(card->func, reg, &ret);
			if (ret) {
				FUNC1(adapter, ERROR,
					    "SDIO read err\n");
				goto done;
			}
			if (start_flag == 0)
				break;
			if (tries == MAX_POLL_TRIES) {
				FUNC1(adapter, ERROR,
					    "FW not ready to dump\n");
				ret = -1;
				goto done;
			}
		}
		FUNC7(100, 200);
	}

	entry->mem_ptr = FUNC9(0xf0000 + 1);
	if (!entry->mem_ptr) {
		ret = -1;
		goto done;
	}
	dbg_ptr = entry->mem_ptr;
	entry->mem_size = 0xf0000;
	end_ptr = dbg_ptr + entry->mem_size;

	done_flag = entry->done_flag;
	FUNC1(adapter, DUMP,
		    "Start %s output, please wait...\n", entry->mem_name);

	while (true) {
		stat = FUNC3(adapter, done_flag);
		if (stat == RDWR_STATUS_FAILURE)
			goto done;
		for (reg = reg_start; reg <= reg_end; reg++) {
			*dbg_ptr = FUNC5(card->func, reg, &ret);
			if (ret) {
				FUNC1(adapter, ERROR,
					    "SDIO read err\n");
				goto done;
			}
			dbg_ptr++;
			if (dbg_ptr >= end_ptr) {
				u8 *tmp_ptr;

				tmp_ptr = FUNC9(entry->mem_size + 0x4000 + 1);
				if (!tmp_ptr)
					goto done;

				FUNC0(tmp_ptr, entry->mem_ptr,
				       entry->mem_size);
				FUNC8(entry->mem_ptr);
				entry->mem_ptr = tmp_ptr;
				tmp_ptr = NULL;
				dbg_ptr = entry->mem_ptr + entry->mem_size;
				entry->mem_size += 0x4000;
				end_ptr = entry->mem_ptr + entry->mem_size;
			}
		}
		if (stat == RDWR_STATUS_DONE) {
			entry->mem_size = dbg_ptr - entry->mem_ptr;
			FUNC1(adapter, DUMP, "dump %s done size=0x%x\n",
				    entry->mem_name, entry->mem_size);
			ret = 0;
			break;
		}
	}
	FUNC1(adapter, MSG, "== mwifiex firmware dump end ==\n");

done:
	if (ret) {
		FUNC1(adapter, ERROR, "firmware dump failed\n");
		if (entry->mem_ptr) {
			FUNC8(entry->mem_ptr);
			entry->mem_ptr = NULL;
		}
		entry->mem_size = 0;
	}
	FUNC6(card->func);
}