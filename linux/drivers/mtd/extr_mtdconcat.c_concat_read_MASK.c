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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int /*<<< orphan*/  corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {scalar_t__ size; TYPE_1__ ecc_stats; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct mtd_concat* FUNC0 (struct mtd_info*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct mtd_info*,scalar_t__,size_t,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct mtd_info *mtd, loff_t from, size_t len,
	    size_t * retlen, u_char * buf)
{
	struct mtd_concat *concat = FUNC0(mtd);
	int ret = 0, err;
	int i;

	for (i = 0; i < concat->num_subdev; i++) {
		struct mtd_info *subdev = concat->subdev[i];
		size_t size, retsize;

		if (from >= subdev->size) {
			/* Not destined for this subdev */
			size = 0;
			from -= subdev->size;
			continue;
		}
		if (from + len > subdev->size)
			/* First part goes into this subdev */
			size = subdev->size - from;
		else
			/* Entire transaction goes into this subdev */
			size = len;

		err = FUNC3(subdev, from, size, &retsize, buf);

		/* Save information about bitflips! */
		if (FUNC4(err)) {
			if (FUNC2(err)) {
				mtd->ecc_stats.failed++;
				ret = err;
			} else if (FUNC1(err)) {
				mtd->ecc_stats.corrected++;
				/* Do not overwrite -EBADMSG !! */
				if (!ret)
					ret = err;
			} else
				return err;
		}

		*retlen += retsize;
		len -= size;
		if (len == 0)
			return ret;

		buf += size;
		from = 0;
	}
	return -EINVAL;
}