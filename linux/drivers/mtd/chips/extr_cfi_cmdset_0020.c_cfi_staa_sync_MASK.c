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
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int state; int oldstate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wq; } ;
struct cfi_private {int numchips; struct flchip* chips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  FL_CFI_QUERY 132 
#define  FL_JEDEC_QUERY 131 
#define  FL_READY 130 
#define  FL_STATUS 129 
#define  FL_SYNCING 128 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (struct mtd_info *mtd)
{
	struct map_info *map = mtd->priv;
	struct cfi_private *cfi = map->fldrv_priv;
	int i;
	struct flchip *chip;
	int ret = 0;
	FUNC0(wait, current);

	for (i=0; !ret && i<cfi->numchips; i++) {
		chip = &cfi->chips[i];

	retry:
		FUNC2(&chip->mutex);

		switch(chip->state) {
		case FL_READY:
		case FL_STATUS:
		case FL_CFI_QUERY:
		case FL_JEDEC_QUERY:
			chip->oldstate = chip->state;
			chip->state = FL_SYNCING;
			/* No need to wake_up() on this state change -
			 * as the whole point is that nobody can do anything
			 * with the chip now anyway.
			 */
			/* Fall through */
		case FL_SYNCING:
			FUNC3(&chip->mutex);
			break;

		default:
			/* Not an idle state */
			FUNC6(TASK_UNINTERRUPTIBLE);
			FUNC1(&chip->wq, &wait);

			FUNC3(&chip->mutex);
			FUNC5();
		        FUNC4(&chip->wq, &wait);

			goto retry;
		}
	}

	/* Unlock the chips again */

	for (i--; i >=0; i--) {
		chip = &cfi->chips[i];

		FUNC2(&chip->mutex);

		if (chip->state == FL_SYNCING) {
			chip->state = chip->oldstate;
			FUNC7(&chip->wq);
		}
		FUNC3(&chip->mutex);
	}
}