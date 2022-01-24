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

/* Variables and functions */
 unsigned long ENOSYS ; 
 int FUNC0 (struct mtd_info*,unsigned long,unsigned long,size_t*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,unsigned long,size_t) ; 

unsigned long FUNC2(struct mtd_info *mtd, unsigned long len,
				    unsigned long offset, unsigned long flags)
{
	size_t retlen;
	void *virt;
	int ret;

	ret = FUNC0(mtd, offset, len, &retlen, &virt, NULL);
	if (ret)
		return ret;
	if (retlen != len) {
		FUNC1(mtd, offset, retlen);
		return -ENOSYS;
	}
	return (unsigned long)virt;
}