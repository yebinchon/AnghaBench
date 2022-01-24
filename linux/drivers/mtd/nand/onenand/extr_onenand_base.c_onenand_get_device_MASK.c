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
struct onenand_chip {int state; int /*<<< orphan*/  wq; int /*<<< orphan*/  chip_lock; int /*<<< orphan*/  (* enable ) (struct mtd_info*) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int FL_PM_SUSPENDED ; 
 int FL_READY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct mtd_info *mtd, int new_state)
{
	struct onenand_chip *this = mtd->priv;
	FUNC0(wait, current);

	/*
	 * Grab the lock and see if the device is available
	 */
	while (1) {
		FUNC5(&this->chip_lock);
		if (this->state == FL_READY) {
			this->state = new_state;
			FUNC6(&this->chip_lock);
			if (new_state != FL_PM_SUSPENDED && this->enable)
				this->enable(mtd);
			break;
		}
		if (new_state == FL_PM_SUSPENDED) {
			FUNC6(&this->chip_lock);
			return (this->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
		}
		FUNC4(TASK_UNINTERRUPTIBLE);
		FUNC1(&this->wq, &wait);
		FUNC6(&this->chip_lock);
		FUNC3();
		FUNC2(&this->wq, &wait);
	}

	return 0;
}