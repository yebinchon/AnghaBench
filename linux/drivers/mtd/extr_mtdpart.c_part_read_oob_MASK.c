#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtd_part {TYPE_2__* parent; scalar_t__ offset; } ;
struct mtd_oob_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct mtd_ecc_stats {scalar_t__ corrected; scalar_t__ failed; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {int (* _read_oob ) (TYPE_2__*,scalar_t__,struct mtd_oob_ops*) ;struct mtd_ecc_stats ecc_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mtd_part* FUNC1 (struct mtd_info*) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,struct mtd_oob_ops*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, loff_t from,
		struct mtd_oob_ops *ops)
{
	struct mtd_part *part = FUNC1(mtd);
	struct mtd_ecc_stats stats;
	int res;

	stats = part->parent->ecc_stats;
	res = part->parent->_read_oob(part->parent, from + part->offset, ops);
	if (FUNC3(FUNC0(res)))
		mtd->ecc_stats.failed +=
			part->parent->ecc_stats.failed - stats.failed;
	else
		mtd->ecc_stats.corrected +=
			part->parent->ecc_stats.corrected - stats.corrected;
	return res;
}