#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ionic_dev {TYPE_3__* dev_cmd_regs; } ;
struct ionic {int /*<<< orphan*/  dev; struct ionic_dev idev; } ;
struct TYPE_4__ {int opcode; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  doorbell; int /*<<< orphan*/  done; TYPE_2__ cmd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 int IONIC_RC_EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct ionic_dev*) ; 
 int FUNC6 (struct ionic_dev*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 

int FUNC14(struct ionic *ionic, unsigned long max_seconds)
{
	struct ionic_dev *idev = &ionic->idev;
	unsigned long start_time;
	unsigned long max_wait;
	unsigned long duration;
	int opcode;
	int done;
	int err;

	FUNC0(FUNC4());

	/* Wait for dev cmd to complete, retrying if we get EAGAIN,
	 * but don't wait any longer than max_seconds.
	 */
	max_wait = jiffies + (max_seconds * HZ);
try_again:
	start_time = jiffies;
	do {
		done = FUNC5(idev);
		if (done)
			break;
		FUNC11(20);
	} while (!done && FUNC13(jiffies, max_wait));
	duration = jiffies - start_time;

	opcode = idev->dev_cmd_regs->cmd.cmd.opcode;
	FUNC1(ionic->dev, "DEVCMD %s (%d) done=%d took %ld secs (%ld jiffies)\n",
		FUNC9(opcode), opcode,
		done, duration / HZ, duration);

	if (!done && !FUNC13(jiffies, max_wait)) {
		FUNC3(ionic->dev, "DEVCMD %s (%d) timeout after %ld secs\n",
			 FUNC9(opcode), opcode, max_seconds);
		return -ETIMEDOUT;
	}

	err = FUNC6(&ionic->idev);
	if (err) {
		if (err == IONIC_RC_EAGAIN && !FUNC12(jiffies, max_wait)) {
			FUNC2(ionic->dev, "DEV_CMD %s (%d) error, %s (%d) retrying...\n",
				FUNC9(opcode), opcode,
				FUNC8(err), err);

			FUNC11(1000);
			FUNC10(0, &idev->dev_cmd_regs->done);
			FUNC10(1, &idev->dev_cmd_regs->doorbell);
			goto try_again;
		}

		FUNC2(ionic->dev, "DEV_CMD %s (%d) error, %s (%d) failed\n",
			FUNC9(opcode), opcode,
			FUNC8(err), err);

		return FUNC7(err);
	}

	return 0;
}