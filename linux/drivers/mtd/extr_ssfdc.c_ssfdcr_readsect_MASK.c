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
struct TYPE_2__ {int /*<<< orphan*/  mtd; } ;
struct ssfdcr_record {int erase_size; int map_len; int* logic_block_map; TYPE_1__ mbd; } ;
struct mtd_blktrans_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mtd_blktrans_dev *dev,
				unsigned long logic_sect_no, char *buf)
{
	struct ssfdcr_record *ssfdc = (struct ssfdcr_record *)dev;
	int sectors_per_block, offset, block_address;

	sectors_per_block = ssfdc->erase_size >> SECTOR_SHIFT;
	offset = (int)(logic_sect_no % sectors_per_block);
	block_address = (int)(logic_sect_no / sectors_per_block);

	FUNC2("SSFDC_RO: ssfdcr_readsect(%lu) sec_per_blk=%d, ofst=%d,"
		" block_addr=%d\n", logic_sect_no, sectors_per_block, offset,
		block_address);

	FUNC0(block_address >= ssfdc->map_len);

	block_address = ssfdc->logic_block_map[block_address];

	FUNC2("SSFDC_RO: ssfdcr_readsect() phys_block_addr=%d\n",
		block_address);

	if (block_address < 0xffff) {
		unsigned long sect_no;

		sect_no = (unsigned long)block_address * sectors_per_block +
				offset;

		FUNC2("SSFDC_RO: ssfdcr_readsect() phys_sect_no=%lu\n",
			sect_no);

		if (FUNC3(ssfdc->mbd.mtd, buf, sect_no) < 0)
			return -EIO;
	} else {
		FUNC1(buf, 0xff, SECTOR_SIZE);
	}

	return 0;
}