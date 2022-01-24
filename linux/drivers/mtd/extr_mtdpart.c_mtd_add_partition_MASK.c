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
struct mtd_partition {char const* name; long long size; long long offset; } ;
struct mtd_part {int /*<<< orphan*/  list; int /*<<< orphan*/  mtd; } ;
struct mtd_info {long long size; } ;
typedef  int /*<<< orphan*/  part ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mtd_part*) ; 
 long long MTDPART_OFS_APPEND ; 
 long long MTDPART_OFS_NXTBLK ; 
 long long MTDPART_SIZ_FULL ; 
 int FUNC1 (struct mtd_part*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct mtd_part* FUNC3 (struct mtd_info*,struct mtd_partition*,int,long long) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_part*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_partition*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mtd_part*) ; 
 int /*<<< orphan*/  mtd_partitions ; 
 int /*<<< orphan*/  mtd_partitions_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mtd_info *parent, const char *name,
		      long long offset, long long length)
{
	struct mtd_partition part;
	struct mtd_part *new;
	int ret = 0;

	/* the direct offset is expected */
	if (offset == MTDPART_OFS_APPEND ||
	    offset == MTDPART_OFS_NXTBLK)
		return -EINVAL;

	if (length == MTDPART_SIZ_FULL)
		length = parent->size - offset;

	if (length <= 0)
		return -EINVAL;

	FUNC7(&part, 0, sizeof(part));
	part.name = name;
	part.size = length;
	part.offset = offset;

	new = FUNC3(parent, &part, -1, offset);
	if (FUNC0(new))
		return FUNC1(new);

	FUNC9(&mtd_partitions_mutex);
	FUNC5(&new->list, &mtd_partitions);
	FUNC10(&mtd_partitions_mutex);

	ret = FUNC2(&new->mtd);
	if (ret)
		goto err_remove_part;

	FUNC8(new);

	return 0;

err_remove_part:
	FUNC9(&mtd_partitions_mutex);
	FUNC6(&new->list);
	FUNC10(&mtd_partitions_mutex);

	FUNC4(new);

	return ret;
}