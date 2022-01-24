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
struct mtd_partition {int dummy; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {int dummy; } ;
struct bcm963xx_nvram {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*,struct mtd_partition const**,struct bcm963xx_nvram*) ; 
 int FUNC2 (struct mtd_info*,struct bcm963xx_nvram*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm963xx_nvram*) ; 
 struct bcm963xx_nvram* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *master,
					const struct mtd_partition **pparts,
					struct mtd_part_parser_data *data)
{
	struct bcm963xx_nvram *nvram = NULL;
	int ret;

	if (FUNC0(master))
		return -EINVAL;

	nvram = FUNC5(sizeof(*nvram));
	if (!nvram)
		return -ENOMEM;

	ret = FUNC2(master, nvram);
	if (ret)
		goto out;

	if (!FUNC3(master))
		ret = FUNC1(master, pparts, nvram);
	else
		ret = -EINVAL;

out:
	FUNC4(nvram);
	return ret;
}