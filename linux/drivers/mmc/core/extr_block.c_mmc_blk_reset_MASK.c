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
struct mmc_host {TYPE_1__* card; } ;
struct mmc_blk_data {int reset_done; int /*<<< orphan*/  part_type; int /*<<< orphan*/  part_curr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 struct mmc_blk_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC3(struct mmc_blk_data *md, struct mmc_host *host,
			 int type)
{
	int err;

	if (md->reset_done & type)
		return -EEXIST;

	md->reset_done |= type;
	err = FUNC2(host);
	/* Ensure we switch back to the correct partition */
	if (err != -EOPNOTSUPP) {
		struct mmc_blk_data *main_md =
			FUNC0(&host->card->dev);
		int part_err;

		main_md->part_curr = main_md->part_type;
		part_err = FUNC1(host->card, md->part_type);
		if (part_err) {
			/*
			 * We have failed to get back into the correct
			 * partition, so we need to abort the whole request.
			 */
			return -ENODEV;
		}
	}
	return err;
}