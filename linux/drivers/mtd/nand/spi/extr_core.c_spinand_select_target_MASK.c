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
struct spinand_device {unsigned int cur_target; int (* select_target ) (struct spinand_device*,unsigned int) ;} ;
struct TYPE_2__ {unsigned int ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct nand_device* FUNC1 (struct spinand_device*) ; 
 int FUNC2 (struct spinand_device*,unsigned int) ; 

int FUNC3(struct spinand_device *spinand, unsigned int target)
{
	struct nand_device *nand = FUNC1(spinand);
	int ret;

	if (FUNC0(target >= nand->memorg.ntargets))
		return -EINVAL;

	if (spinand->cur_target == target)
		return 0;

	if (nand->memorg.ntargets == 1) {
		spinand->cur_target = target;
		return 0;
	}

	ret = spinand->select_target(spinand, target);
	if (ret)
		return ret;

	spinand->cur_target = target;
	return 0;
}