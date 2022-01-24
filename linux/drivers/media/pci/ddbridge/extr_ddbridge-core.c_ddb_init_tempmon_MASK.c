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
struct TYPE_3__ {int regmapid; } ;
struct ddb_link {TYPE_2__* dev; int /*<<< orphan*/  temp_lock; TYPE_1__ ids; struct ddb_info* info; } ;
struct ddb_info {scalar_t__ type; int /*<<< orphan*/  tempmon_irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DDB_OCTOPUS_MAX_CT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ddb_link*,int) ; 

__attribute__((used)) static int FUNC3(struct ddb_link *link)
{
	const struct ddb_info *info = link->info;

	if (!info->tempmon_irq)
		return 0;
	if (info->type == DDB_OCTOPUS_MAX_CT)
		if (link->ids.regmapid < 0x00010002)
			return 0;
	FUNC1(&link->temp_lock);
	FUNC0(link->dev->dev, "init_tempmon\n");
	return FUNC2(link, 1);
}