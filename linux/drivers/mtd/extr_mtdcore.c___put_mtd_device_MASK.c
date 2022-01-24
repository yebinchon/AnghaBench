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
struct mtd_info {scalar_t__ usecount; int /*<<< orphan*/  owner; int /*<<< orphan*/  (* _put_device ) (struct mtd_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 

void FUNC3(struct mtd_info *mtd)
{
	--mtd->usecount;
	FUNC0(mtd->usecount < 0);

	if (mtd->_put_device)
		mtd->_put_device(mtd);

	FUNC1(mtd->owner);
}