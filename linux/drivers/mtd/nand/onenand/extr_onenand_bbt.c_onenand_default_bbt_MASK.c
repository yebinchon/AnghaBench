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
struct onenand_chip {struct bbm_info* bbm; } ;
struct mtd_info {struct onenand_chip* priv; } ;
struct bbm_info {int /*<<< orphan*/ * badblock_pattern; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bbm_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  largepage_memorybased ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ *) ; 

int FUNC2(struct mtd_info *mtd)
{
	struct onenand_chip *this = mtd->priv;
	struct bbm_info *bbm;

	this->bbm = FUNC0(sizeof(struct bbm_info), GFP_KERNEL);
	if (!this->bbm)
		return -ENOMEM;

	bbm = this->bbm;

	/* 1KB page has same configuration as 2KB page */
	if (!bbm->badblock_pattern)
		bbm->badblock_pattern = &largepage_memorybased;

	return FUNC1(mtd, bbm->badblock_pattern);
}