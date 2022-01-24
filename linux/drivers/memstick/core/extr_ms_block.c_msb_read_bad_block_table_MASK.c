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
typedef  scalar_t__ u16 ;
struct scatterlist {int dummy; } ;
struct msb_data {scalar_t__* boot_block_locations; int page_size; int pages_in_block; scalar_t__ block_count; int /*<<< orphan*/  used_blocks_bitmap; struct ms_boot_page* boot_page; } ;
struct TYPE_3__ {int data_size; int start_addr; } ;
struct TYPE_4__ {TYPE_1__ disabled_block; } ;
struct ms_boot_page {TYPE_2__ entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MS_BLOCK_INVALID ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msb_data*,scalar_t__) ; 
 int FUNC7 (struct msb_data*,scalar_t__,int,int /*<<< orphan*/ *,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,scalar_t__*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct msb_data *msb, int block_nr)
{
	struct ms_boot_page *boot_block;
	struct scatterlist sg;
	u16 *buffer = NULL;
	int offset = 0;
	int i, error = 0;
	int data_size, data_offset, page, page_offset, size_to_read;
	u16 pba;

	FUNC0(block_nr > 1);
	boot_block = &msb->boot_page[block_nr];
	pba = msb->boot_block_locations[block_nr];

	if (msb->boot_block_locations[block_nr] == MS_BLOCK_INVALID)
		return -EINVAL;

	data_size = boot_block->entry.disabled_block.data_size;
	data_offset = sizeof(struct ms_boot_page) +
			boot_block->entry.disabled_block.start_addr;
	if (!data_size)
		return 0;

	page = data_offset / msb->page_size;
	page_offset = data_offset % msb->page_size;
	size_to_read =
		FUNC1(data_size + page_offset, msb->page_size) *
			msb->page_size;

	FUNC3("reading bad block of boot block at pba %d, offset %d len %d",
		pba, data_offset, data_size);

	buffer = FUNC5(size_to_read, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	/* Read the buffer */
	FUNC9(&sg, buffer, size_to_read);

	while (offset < size_to_read) {
		error = FUNC7(msb, pba, page, NULL, &sg, offset);
		if (error)
			goto out;

		page++;
		offset += msb->page_size;

		if (page == msb->pages_in_block) {
			FUNC8(
			"bad block table extends beyond the boot block");
			break;
		}
	}

	/* Process the bad block table */
	for (i = page_offset; i < data_size / sizeof(u16); i++) {

		u16 bad_block = FUNC2(buffer[i]);

		if (bad_block >= msb->block_count) {
			FUNC3("bad block table contains invalid block %d",
								bad_block);
			continue;
		}

		if (FUNC10(bad_block, msb->used_blocks_bitmap))  {
			FUNC3("duplicate bad block %d in the table",
				bad_block);
			continue;
		}

		FUNC3("block %d is marked as factory bad", bad_block);
		FUNC6(msb, bad_block);
	}
out:
	FUNC4(buffer);
	return error;
}