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
struct spinand_device {int /*<<< orphan*/  lock; } ;
struct mtd_info {int dummy; } ;
struct erase_info {int dummy; } ;

/* Variables and functions */
 struct spinand_device* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtd_info*,struct erase_info*) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd,
			     struct erase_info *einfo)
{
	struct spinand_device *spinand = FUNC0(mtd);
	int ret;

	FUNC1(&spinand->lock);
	ret = FUNC3(mtd, einfo);
	FUNC2(&spinand->lock);

	return ret;
}