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
struct mspro_block_data {scalar_t__ usage_count; } ;
struct gendisk {struct mspro_block_data* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MSPRO_BLOCK_PART_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mspro_block_data*) ; 
 int /*<<< orphan*/  mspro_block_disk_idr ; 
 int /*<<< orphan*/  mspro_block_disk_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 

__attribute__((used)) static void FUNC7(struct gendisk *disk)
{
	struct mspro_block_data *msb = disk->private_data;
	int disk_id = FUNC0(FUNC1(disk)) >> MSPRO_BLOCK_PART_SHIFT;

	FUNC4(&mspro_block_disk_lock);

	if (msb) {
		if (msb->usage_count)
			msb->usage_count--;

		if (!msb->usage_count) {
			FUNC3(msb);
			disk->private_data = NULL;
			FUNC2(&mspro_block_disk_idr, disk_id);
			FUNC6(disk);
		}
	}

	FUNC5(&mspro_block_disk_lock);
}