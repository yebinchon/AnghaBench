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
typedef  scalar_t__ u64 ;
struct mtd_part {scalar_t__ offset; struct mtd_info* parent; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*) ; 
 struct mtd_part* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static u64 FUNC2(struct mtd_info *mtd)
{
	struct mtd_part *part = FUNC1(mtd);

	if (!FUNC0(mtd))
		return 0;

	return FUNC2(part->parent) + part->offset;
}