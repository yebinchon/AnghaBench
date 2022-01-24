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
struct onenand_chip {scalar_t__ state; int /*<<< orphan*/  chip_lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  (* disable ) (struct mtd_info*) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;

/* Variables and functions */
 scalar_t__ FL_PM_SUSPENDED ; 
 scalar_t__ FL_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd)
{
	struct onenand_chip *this = mtd->priv;

	if (this->state != FL_PM_SUSPENDED && this->disable)
		this->disable(mtd);
	/* Release the chip */
	FUNC0(&this->chip_lock);
	this->state = FL_READY;
	FUNC3(&this->wq);
	FUNC1(&this->chip_lock);
}