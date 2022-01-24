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
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t ofs)
{
	int ret;

	ret = FUNC1(mtd, ofs);
	if (ret) {
		/* If it was bad already, return success and do nothing */
		if (ret > 0)
			return 0;
		return ret;
	}

	return FUNC2(FUNC0(mtd), ofs);
}