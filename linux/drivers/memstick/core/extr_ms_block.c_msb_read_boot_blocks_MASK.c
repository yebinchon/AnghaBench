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
struct scatterlist {int dummy; } ;
struct msb_data {int* boot_block_locations; size_t boot_block_count; int block_count; struct ms_boot_page* boot_page; } ;
struct ms_extra_data_register {int management_flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  block_id; } ;
struct ms_boot_page {TYPE_1__ header; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEMSTICK_MANAGEMENT_SYSFLG ; 
 scalar_t__ MS_BLOCK_BOOT_ID ; 
 void* MS_BLOCK_INVALID ; 
 int MS_BLOCK_MAX_BOOT_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct ms_boot_page* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ms_boot_page*) ; 
 scalar_t__ FUNC5 (struct msb_data*,int,int /*<<< orphan*/ ,struct ms_extra_data_register*,struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,struct ms_boot_page*,int) ; 

__attribute__((used)) static int FUNC8(struct msb_data *msb)
{
	int pba = 0;
	struct scatterlist sg;
	struct ms_extra_data_register extra;
	struct ms_boot_page *page;

	msb->boot_block_locations[0] = MS_BLOCK_INVALID;
	msb->boot_block_locations[1] = MS_BLOCK_INVALID;
	msb->boot_block_count = 0;

	FUNC2("Start of a scan for the boot blocks");

	if (!msb->boot_page) {
		page = FUNC3(2, sizeof(struct ms_boot_page),
				     GFP_KERNEL);
		if (!page)
			return -ENOMEM;

		msb->boot_page = page;
	} else
		page = msb->boot_page;

	msb->block_count = MS_BLOCK_MAX_BOOT_ADDR;

	for (pba = 0; pba < MS_BLOCK_MAX_BOOT_ADDR; pba++) {

		FUNC7(&sg, page, sizeof(*page));
		if (FUNC5(msb, pba, 0, &extra, &sg, 0)) {
			FUNC1("boot scan: can't read pba %d", pba);
			continue;
		}

		if (extra.management_flag & MEMSTICK_MANAGEMENT_SYSFLG) {
			FUNC1("management flag doesn't indicate boot block %d",
									pba);
			continue;
		}

		if (FUNC0(page->header.block_id) != MS_BLOCK_BOOT_ID) {
			FUNC1("the pba at %d doesn' contain boot block ID", pba);
			continue;
		}

		FUNC4(page);
		msb->boot_block_locations[msb->boot_block_count] = pba;

		page++;
		msb->boot_block_count++;

		if (msb->boot_block_count == 2)
			break;
	}

	if (!msb->boot_block_count) {
		FUNC6("media doesn't contain master page, aborting");
		return -EIO;
	}

	FUNC2("End of scan for boot blocks");
	return 0;
}