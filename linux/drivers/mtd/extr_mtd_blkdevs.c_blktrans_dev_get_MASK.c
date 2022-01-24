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
struct mtd_blktrans_dev {int /*<<< orphan*/  ref; } ;
struct gendisk {struct mtd_blktrans_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  blktrans_ref_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mtd_blktrans_dev *FUNC3(struct gendisk *disk)
{
	struct mtd_blktrans_dev *dev;

	FUNC1(&blktrans_ref_mutex);
	dev = disk->private_data;

	if (!dev)
		goto unlock;
	FUNC0(&dev->ref);
unlock:
	FUNC2(&blktrans_ref_mutex);
	return dev;
}