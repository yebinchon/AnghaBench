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
typedef  int /*<<< orphan*/  u8 ;
struct spinand_device {scalar_t__ cur_target; int /*<<< orphan*/ * cfg_cache; } ;
struct TYPE_2__ {scalar_t__ ntargets; } ;
struct nand_device {TYPE_1__ memorg; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct nand_device* FUNC1 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC2(struct spinand_device *spinand, u8 *cfg)
{
	struct nand_device *nand = FUNC1(spinand);

	if (FUNC0(spinand->cur_target < 0 ||
		    spinand->cur_target >= nand->memorg.ntargets))
		return -EINVAL;

	*cfg = spinand->cfg_cache[spinand->cur_target];
	return 0;
}