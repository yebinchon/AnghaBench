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
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct mwifiex_adapter {size_t num_mem_types; int devdump_len; char* devdump_data; struct memory_type_mapping* mem_type_mapping_tbl; } ;
struct memory_type_mapping {char* mem_ptr; char* mem_name; scalar_t__ mem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MSG ; 
 scalar_t__ MWIFIEX_FW_DUMP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__) ; 

void FUNC7(struct mwifiex_adapter *adapter)
{
	u8 idx;
	char *fw_dump_ptr;
	u32 dump_len = 0;

	for (idx = 0; idx < adapter->num_mem_types; idx++) {
		struct memory_type_mapping *entry =
				&adapter->mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			dump_len += (FUNC4("========Start dump ") +
					FUNC4(entry->mem_name) +
					FUNC4("========\n") +
					(entry->mem_size + 1) +
					FUNC4("\n========End dump========\n"));
		}
	}

	if (dump_len + 1 + adapter->devdump_len > MWIFIEX_FW_DUMP_SIZE) {
		/* Realloc in case buffer overflow */
		fw_dump_ptr = FUNC6(dump_len + 1 + adapter->devdump_len);
		FUNC2(adapter, MSG, "Realloc device dump data.\n");
		if (!fw_dump_ptr) {
			FUNC5(adapter->devdump_data);
			FUNC2(adapter, ERROR,
				    "vzalloc devdump data failure!\n");
			return;
		}

		FUNC1(fw_dump_ptr, adapter->devdump_data,
			adapter->devdump_len);
		FUNC5(adapter->devdump_data);
		adapter->devdump_data = fw_dump_ptr;
	}

	fw_dump_ptr = (char *)adapter->devdump_data + adapter->devdump_len;

	for (idx = 0; idx < adapter->num_mem_types; idx++) {
		struct memory_type_mapping *entry =
					&adapter->mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			FUNC3(fw_dump_ptr, "========Start dump ");
			fw_dump_ptr += FUNC4("========Start dump ");

			FUNC3(fw_dump_ptr, entry->mem_name);
			fw_dump_ptr += FUNC4(entry->mem_name);

			FUNC3(fw_dump_ptr, "========\n");
			fw_dump_ptr += FUNC4("========\n");

			FUNC0(fw_dump_ptr, entry->mem_ptr, entry->mem_size);
			fw_dump_ptr += entry->mem_size;

			FUNC3(fw_dump_ptr, "\n========End dump========\n");
			fw_dump_ptr += FUNC4("\n========End dump========\n");
		}
	}

	adapter->devdump_len = fw_dump_ptr - (char *)adapter->devdump_data;

	for (idx = 0; idx < adapter->num_mem_types; idx++) {
		struct memory_type_mapping *entry =
			&adapter->mem_type_mapping_tbl[idx];

		FUNC5(entry->mem_ptr);
		entry->mem_ptr = NULL;
		entry->mem_size = 0;
	}
}