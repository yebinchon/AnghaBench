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
struct map_info {int dummy; } ;
struct flchip_shared {int /*<<< orphan*/  lock; struct flchip* erasing; struct flchip* writing; } ;
struct flchip {scalar_t__ state; int oldstate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wq; struct flchip_shared* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int FL_ERASING ; 
 scalar_t__ FL_SYNCING ; 
 int FL_WRITING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct map_info*,struct flchip*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct map_info*,struct flchip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct map_info *map, struct flchip *chip, int mode)
{
	int ret;
	FUNC0(wait, current);

 retry:
	if (chip->priv && (mode == FL_WRITING || mode == FL_ERASING)
		&& chip->state != FL_SYNCING) {
		/*
		 * OK. We have possibility for contension on the write/erase
		 * operations which are global to the real chip and not per
		 * partition.  So let's fight it over in the partition which
		 * currently has authority on the operation.
		 *
		 * The rules are as follows:
		 *
		 * - any write operation must own shared->writing.
		 *
		 * - any erase operation must own _both_ shared->writing and
		 *   shared->erasing.
		 *
		 * - contension arbitration is handled in the owner's context.
		 *
		 * The 'shared' struct can be read and/or written only when
		 * its lock is taken.
		 */
		struct flchip_shared *shared = chip->priv;
		struct flchip *contender;
		FUNC3(&shared->lock);
		contender = shared->writing;
		if (contender && contender != chip) {
			/*
			 * The engine to perform desired operation on this
			 * partition is already in use by someone else.
			 * Let's fight over it in the context of the chip
			 * currently using it.  If it is possible to suspend,
			 * that other partition will do just that, otherwise
			 * it'll happily send us to sleep.  In any case, when
			 * get_chip returns success we're clear to go ahead.
			 */
			ret = FUNC4(&contender->mutex);
			FUNC5(&shared->lock);
			if (!ret)
				goto retry;
			FUNC5(&chip->mutex);
			ret = FUNC2(map, contender, mode);
			FUNC3(&chip->mutex);

			if (ret == -EAGAIN) {
				FUNC5(&contender->mutex);
				goto retry;
			}
			if (ret) {
				FUNC5(&contender->mutex);
				return ret;
			}
			FUNC3(&shared->lock);

			/* We should not own chip if it is already in FL_SYNCING
			 * state. Put contender and retry. */
			if (chip->state == FL_SYNCING) {
				FUNC6(map, contender);
				FUNC5(&contender->mutex);
				goto retry;
			}
			FUNC5(&contender->mutex);
		}

		/* Check if we have suspended erase on this chip.
		   Must sleep in such a case. */
		if (mode == FL_ERASING && shared->erasing
		    && shared->erasing->oldstate == FL_ERASING) {
			FUNC5(&shared->lock);
			FUNC9(TASK_UNINTERRUPTIBLE);
			FUNC1(&chip->wq, &wait);
			FUNC5(&chip->mutex);
			FUNC8();
			FUNC7(&chip->wq, &wait);
			FUNC3(&chip->mutex);
			goto retry;
		}

		/* We now own it */
		shared->writing = chip;
		if (mode == FL_ERASING)
			shared->erasing = chip;
		FUNC5(&shared->lock);
	}

	ret = FUNC2(map, chip, mode);
	if (ret == -EAGAIN)
		goto retry;

	return ret;
}