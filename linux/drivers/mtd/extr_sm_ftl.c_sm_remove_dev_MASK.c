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
struct sm_ftl {int zone_count; struct sm_ftl* cache_data; struct sm_ftl* zones; struct sm_ftl* cis_buffer; int /*<<< orphan*/  free_sectors; struct sm_ftl* lba_to_phys_table; int /*<<< orphan*/  initialized; int /*<<< orphan*/ * trans; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sm_ftl*) ; 
 int /*<<< orphan*/  FUNC3 (struct sm_ftl*) ; 

__attribute__((used)) static void FUNC4(struct mtd_blktrans_dev *dev)
{
	struct sm_ftl *ftl = dev->priv;
	int i;

	FUNC0(dev);
	ftl->trans = NULL;

	for (i = 0 ; i < ftl->zone_count; i++) {

		if (!ftl->zones[i].initialized)
			continue;

		FUNC2(ftl->zones[i].lba_to_phys_table);
		FUNC1(&ftl->zones[i].free_sectors);
	}

	FUNC3(ftl);
	FUNC2(ftl->cis_buffer);
	FUNC2(ftl->zones);
	FUNC2(ftl->cache_data);
	FUNC2(ftl);
}