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
struct mtd_partition {int dummy; } ;
struct mtd_part_parser_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct mtd_info {int /*<<< orphan*/  dev; TYPE_1__ reboot_notifier; scalar_t__ _reboot; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MTD_PARTITIONED_MASTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct mtd_info*) ; 
 int FUNC3 (struct mtd_info*,struct mtd_partition const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ mtd_reboot_notifier ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*) ; 
 int FUNC7 (struct mtd_info*,char const* const*,struct mtd_part_parser_data*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(struct mtd_info *mtd, const char * const *types,
			      struct mtd_part_parser_data *parser_data,
			      const struct mtd_partition *parts,
			      int nr_parts)
{
	int ret;

	FUNC6(mtd);

	if (FUNC0(CONFIG_MTD_PARTITIONED_MASTER)) {
		ret = FUNC2(mtd);
		if (ret)
			return ret;
	}

	/* Prefer parsed partitions over driver-provided fallback */
	ret = FUNC7(mtd, types, parser_data);
	if (ret > 0)
		ret = 0;
	else if (nr_parts)
		ret = FUNC3(mtd, parts, nr_parts);
	else if (!FUNC5(&mtd->dev))
		ret = FUNC2(mtd);
	else
		ret = 0;

	if (ret)
		goto out;

	/*
	 * FIXME: some drivers unfortunately call this function more than once.
	 * So we have to check if we've already assigned the reboot notifier.
	 *
	 * Generally, we can make multiple calls work for most cases, but it
	 * does cause problems with parse_mtd_partitions() above (e.g.,
	 * cmdlineparts will register partitions more than once).
	 */
	FUNC1(mtd->_reboot && mtd->reboot_notifier.notifier_call,
		  "MTD already registered\n");
	if (mtd->_reboot && !mtd->reboot_notifier.notifier_call) {
		mtd->reboot_notifier.notifier_call = mtd_reboot_notifier;
		FUNC8(&mtd->reboot_notifier);
	}

out:
	if (ret && FUNC5(&mtd->dev))
		FUNC4(mtd);

	return ret;
}