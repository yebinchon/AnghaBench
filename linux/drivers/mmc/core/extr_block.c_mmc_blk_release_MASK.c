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
struct mmc_blk_data {int dummy; } ;
struct gendisk {struct mmc_blk_data* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  block_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gendisk *disk, fmode_t mode)
{
	struct mmc_blk_data *md = disk->private_data;

	FUNC1(&block_mutex);
	FUNC0(md);
	FUNC2(&block_mutex);
}