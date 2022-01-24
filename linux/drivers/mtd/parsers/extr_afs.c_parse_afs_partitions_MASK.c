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
typedef  scalar_t__ u_int ;
struct mtd_partition {struct mtd_partition* name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {scalar_t__ size; scalar_t__ erasesize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mtd_info*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mtd_info*,scalar_t__) ; 
 int FUNC2 (struct mtd_info*,scalar_t__,struct mtd_partition*) ; 
 int FUNC3 (struct mtd_info*,scalar_t__,struct mtd_partition*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_partition*) ; 
 struct mtd_partition* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd,
				const struct mtd_partition **pparts,
				struct mtd_part_parser_data *data)
{
	struct mtd_partition *parts;
	u_int off, sz;
	int ret = 0;
	int i;

	/* Count the partitions by looping over all erase blocks */
	for (i = off = sz = 0; off < mtd->size; off += mtd->erasesize) {
		if (FUNC0(mtd, off)) {
			sz += sizeof(struct mtd_partition);
			i += 1;
		}
		if (FUNC1(mtd, off)) {
			sz += sizeof(struct mtd_partition);
			i += 1;
		}
	}

	if (!i)
		return 0;

	parts = FUNC5(sz, GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	/*
	 * Identify the partitions
	 */
	for (i = off = 0; off < mtd->size; off += mtd->erasesize) {
		if (FUNC0(mtd, off)) {
			ret = FUNC2(mtd, off, &parts[i]);
			if (ret)
				goto out_free_parts;
			i++;
		}
		if (FUNC1(mtd, off)) {
			ret = FUNC3(mtd, off, &parts[i]);
			if (ret)
				goto out_free_parts;
			i++;
		}
	}

	*pparts = parts;
	return i;

out_free_parts:
	while (i >= 0) {
		FUNC4(parts[i].name);
		i--;
	}
	FUNC4(parts);
	*pparts = NULL;
	return ret;
}