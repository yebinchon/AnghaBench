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
struct mmc_blk_data {scalar_t__ usage; } ;
struct gendisk {struct mmc_blk_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_lock ; 

__attribute__((used)) static struct mmc_blk_data *FUNC2(struct gendisk *disk)
{
	struct mmc_blk_data *md;

	FUNC0(&open_lock);
	md = disk->private_data;
	if (md && md->usage == 0)
		md = NULL;
	if (md)
		md->usage++;
	FUNC1(&open_lock);

	return md;
}