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
struct ubi_device {int peb_count; scalar_t__* lookuptbl; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct ubi_device *ubi, unsigned long *seen)
{
	int pnum, ret = 0;

	if (!FUNC1(ubi) || !seen)
		return 0;

	for (pnum = 0; pnum < ubi->peb_count; pnum++) {
		if (FUNC0(pnum, seen) && ubi->lookuptbl[pnum]) {
			FUNC2(ubi, "self-check failed for PEB %d, fastmap didn't see it", pnum);
			ret = -EINVAL;
		}
	}

	return ret;
}