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
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int state; int /*<<< orphan*/  mutex; scalar_t__ write_suspended; scalar_t__ erase_suspended; int /*<<< orphan*/  wq; } ;
struct cfi_private {int dummy; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETIME ; 
 int FL_ERASING ; 
 void* FL_STATUS ; 
 int FL_WRITING ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,unsigned long,int) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct map_info*,unsigned long) ; 
 scalar_t__ FUNC6 (struct map_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct map_info*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC15(
		struct map_info *map, struct flchip *chip,
		unsigned long cmd_adr, unsigned long inval_adr, int inval_len,
		unsigned int chip_op_time, unsigned int chip_op_time_max)
{
	struct cfi_private *cfi = map->fldrv_priv;
	map_word status, status_OK = FUNC0(0x80);
	int chip_state = chip->state;
	unsigned int timeo, sleep_time, reset_timeo;

	FUNC10(&chip->mutex);
	if (inval_len)
		FUNC2(map, inval_adr, inval_len);
	FUNC9(&chip->mutex);

	timeo = chip_op_time_max;
	if (!timeo)
		timeo = 500000;
	reset_timeo = timeo;
	sleep_time = chip_op_time / 2;

	for (;;) {
		if (chip->state != chip_state) {
			/* Someone's suspended the operation: sleep */
			FUNC1(wait, current);
			FUNC13(TASK_UNINTERRUPTIBLE);
			FUNC3(&chip->wq, &wait);
			FUNC10(&chip->mutex);
			FUNC12();
			FUNC11(&chip->wq, &wait);
			FUNC9(&chip->mutex);
			continue;
		}

		status = FUNC5(map, cmd_adr);
		if (FUNC6(map, status, status_OK, status_OK))
			break;

		if (chip->erase_suspended && chip_state == FL_ERASING)  {
			/* Erase suspend occurred while sleep: reset timeout */
			timeo = reset_timeo;
			chip->erase_suspended = 0;
		}
		if (chip->write_suspended && chip_state == FL_WRITING)  {
			/* Write suspend occurred while sleep: reset timeout */
			timeo = reset_timeo;
			chip->write_suspended = 0;
		}
		if (!timeo) {
			FUNC7(map, FUNC0(0x70), cmd_adr);
			chip->state = FL_STATUS;
			return -ETIME;
		}

		/* OK Still waiting. Drop the lock, wait a while and retry. */
		FUNC10(&chip->mutex);
		if (sleep_time >= 1000000/HZ) {
			/*
			 * Half of the normal delay still remaining
			 * can be performed with a sleeping delay instead
			 * of busy waiting.
			 */
			FUNC8(sleep_time/1000);
			timeo -= sleep_time;
			sleep_time = 1000000/HZ;
		} else {
			FUNC14(1);
			FUNC4();
			timeo--;
		}
		FUNC9(&chip->mutex);
	}

	/* Done and happy. */
 	chip->state = FL_STATUS;
	return 0;
}