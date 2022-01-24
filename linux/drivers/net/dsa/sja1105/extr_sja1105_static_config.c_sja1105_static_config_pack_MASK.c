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
struct sja1105_table_header {int len; int crc; scalar_t__ block_id; int /*<<< orphan*/  member_0; } ;
struct sja1105_table {int entry_count; TYPE_1__* ops; int /*<<< orphan*/ * entries; } ;
struct sja1105_static_config {struct sja1105_table* tables; int /*<<< orphan*/  device_id; } ;
typedef  enum sja1105_blk_idx { ____Placeholder_sja1105_blk_idx } sja1105_blk_idx ;
struct TYPE_2__ {int packed_entry_size; int unpacked_entry_size; int /*<<< orphan*/  (* packing ) (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BLK_IDX_MAX ; 
 int /*<<< orphan*/  PACK ; 
 int /*<<< orphan*/  SJA1105_SIZE_DEVICE_ID ; 
 int SJA1105_SIZE_TABLE_HEADER ; 
 scalar_t__* blk_id_map ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sja1105_table_header*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sja1105_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(void *buf, struct sja1105_static_config *config)
{
	struct sja1105_table_header header = {0};
	enum sja1105_blk_idx i;
	char *p = buf;
	int j;

	FUNC1(p, &config->device_id, 31, 0, 4);
	p += SJA1105_SIZE_DEVICE_ID;

	for (i = 0; i < BLK_IDX_MAX; i++) {
		const struct sja1105_table *table;
		char *table_start;

		table = &config->tables[i];
		if (!table->entry_count)
			continue;

		header.block_id = blk_id_map[i];
		header.len = table->entry_count *
			     table->ops->packed_entry_size / 4;
		FUNC2(p, &header);
		p += SJA1105_SIZE_TABLE_HEADER;
		table_start = p;
		for (j = 0; j < table->entry_count; j++) {
			u8 *entry_ptr = table->entries;

			entry_ptr += j * table->ops->unpacked_entry_size;
			FUNC0(p, 0, table->ops->packed_entry_size);
			table->ops->packing(p, entry_ptr, PACK);
			p += table->ops->packed_entry_size;
		}
		FUNC4(table_start, p);
		p += 4;
	}
	/* Final header:
	 * Block ID does not matter
	 * Length of 0 marks that header is final
	 * CRC will be replaced on-the-fly on "config upload"
	 */
	header.block_id = 0;
	header.len = 0;
	header.crc = 0xDEADBEEF;
	FUNC0(p, 0, SJA1105_SIZE_TABLE_HEADER);
	FUNC3(p, &header, PACK);
}