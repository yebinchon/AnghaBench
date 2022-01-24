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
struct msb_data {int /*<<< orphan*/  disk_id; scalar_t__ usage_count; } ;
struct gendisk {struct msb_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msb_data*) ; 
 int /*<<< orphan*/  msb_disk_idr ; 
 int /*<<< orphan*/  msb_disk_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 

__attribute__((used)) static int FUNC6(struct gendisk *disk)
{
	struct msb_data *msb = disk->private_data;

	FUNC0("block device release");
	FUNC3(&msb_disk_lock);

	if (msb) {
		if (msb->usage_count)
			msb->usage_count--;

		if (!msb->usage_count) {
			disk->private_data = NULL;
			FUNC1(&msb_disk_idr, msb->disk_id);
			FUNC5(disk);
			FUNC2(msb);
		}
	}
	FUNC4(&msb_disk_lock);
	return 0;
}