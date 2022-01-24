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
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;

/* Variables and functions */
 struct mtd_concat* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd)
{
	struct mtd_concat *concat = FUNC0(mtd);
	int i, rc = 0;

	for (i = 0; i < concat->num_subdev; i++) {
		struct mtd_info *subdev = concat->subdev[i];
		if ((rc = FUNC1(subdev)) < 0)
			return rc;
	}
	return rc;
}