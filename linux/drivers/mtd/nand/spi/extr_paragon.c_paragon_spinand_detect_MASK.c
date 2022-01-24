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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* data; } ;
struct spinand_device {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPINAND_MFR_PARAGON ; 
 int /*<<< orphan*/  paragon_spinand_table ; 
 int FUNC1 (struct spinand_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct spinand_device *spinand)
{
	u8 *id = spinand->id.data;
	int ret;

	/* Read ID returns [0][MID][DID] */

	if (id[1] != SPINAND_MFR_PARAGON)
		return 0;

	ret = FUNC1(spinand, paragon_spinand_table,
				     FUNC0(paragon_spinand_table),
				     id[2]);
	if (ret)
		return ret;

	return 1;
}