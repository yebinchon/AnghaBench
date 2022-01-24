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
struct ubi_device {int peb_count; int peb_size; scalar_t__ bad_allowed; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device const*,char*,int,int) ; 

int FUNC4(const struct ubi_device *ubi, int pnum)
{
	struct mtd_info *mtd = ubi->mtd;

	FUNC2(pnum >= 0 && pnum < ubi->peb_count);

	if (ubi->bad_allowed) {
		int ret;

		ret = FUNC1(mtd, (loff_t)pnum * ubi->peb_size);
		if (ret < 0)
			FUNC3(ubi, "error %d while checking if PEB %d is bad",
				ret, pnum);
		else if (ret)
			FUNC0("PEB %d is bad", pnum);
		return ret;
	}

	return 0;
}