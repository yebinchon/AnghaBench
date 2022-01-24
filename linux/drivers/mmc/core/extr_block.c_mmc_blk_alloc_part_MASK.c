#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mmc_card {int dummy; } ;
struct mmc_blk_data {unsigned int part_type; TYPE_1__* disk; int /*<<< orphan*/  part; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  cap_str ;
struct TYPE_3__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmc_blk_data*) ; 
 int FUNC1 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  STRING_UNITS_2 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mmc_blk_data* FUNC5 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC10(struct mmc_card *card,
			      struct mmc_blk_data *md,
			      unsigned int part_type,
			      sector_t size,
			      bool default_ro,
			      const char *subname,
			      int area_type)
{
	char cap_str[10];
	struct mmc_blk_data *part_md;

	part_md = FUNC5(card, FUNC2(md->disk), size, default_ro,
				    subname, area_type);
	if (FUNC0(part_md))
		return FUNC1(part_md);
	part_md->part_type = part_type;
	FUNC4(&part_md->part, &md->part);

	FUNC9((u64)FUNC3(part_md->disk), 512, STRING_UNITS_2,
			cap_str, sizeof(cap_str));
	FUNC8("%s: %s %s partition %u %s\n",
	       part_md->disk->disk_name, FUNC6(card),
	       FUNC7(card), part_md->part_type, cap_str);
	return 0;
}