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
struct mtd_info {struct mdev_part* priv; } ;
struct memcard {int blocklen; int writecnt; } ;
struct mdev_part {int partition; struct maple_device* mdev; } ;
struct maple_device {int /*<<< orphan*/  unit; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; TYPE_1__* mq; int /*<<< orphan*/  busy; int /*<<< orphan*/  maple_wait; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * sendbuf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  MAPLE_COMMAND_BWRITE ; 
 int /*<<< orphan*/  MAPLE_FUNC_MEMCARD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct memcard* FUNC10 (struct maple_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC13(unsigned int num, const unsigned char *buf,
	struct mtd_info *mtd)
{
	struct memcard *card;
	struct mdev_part *mpart;
	struct maple_device *mdev;
	int partition, error, locking, x, phaselen, wait;
	__be32 *sendbuf;

	mpart = mtd->priv;
	mdev = mpart->mdev;
	partition = mpart->partition;
	card = FUNC10(mdev);

	phaselen = card->blocklen/card->writecnt;

	sendbuf = FUNC7(phaselen + 4, GFP_KERNEL);
	if (!sendbuf) {
		error = -ENOMEM;
		goto fail_nosendbuf;
	}
	for (x = 0; x < card->writecnt; x++) {
		sendbuf[0] = FUNC2(partition << 24 | x << 16 | num);
		FUNC11(&sendbuf[1], buf + phaselen * x, phaselen);
		/* wait until the device is not busy doing something else
		* or 1 second - which ever is longer */
		if (FUNC0(&mdev->busy) == 1) {
			FUNC12(mdev->maple_wait,
				FUNC0(&mdev->busy) == 0, HZ);
			if (FUNC0(&mdev->busy) == 1) {
				error = -EBUSY;
				FUNC4(&mdev->dev, "VMU write at (%d, %d)"
					"failed - device is busy\n",
					mdev->port, mdev->unit);
				goto fail_nolock;
			}
		}
		FUNC1(&mdev->busy, 1);

		locking = FUNC9(mdev, MAPLE_FUNC_MEMCARD,
			MAPLE_COMMAND_BWRITE, phaselen / 4 + 2, sendbuf);
		wait = FUNC12(mdev->maple_wait,
			FUNC0(&mdev->busy) == 0, HZ/10);
		if (locking) {
			error = -EIO;
			FUNC1(&mdev->busy, 0);
			goto fail_nolock;
		}
		if (FUNC0(&mdev->busy) == 2) {
			FUNC1(&mdev->busy, 0);
		} else if (wait == 0 || wait == -ERESTARTSYS) {
			error = -EIO;
			FUNC5(&mdev->dev, "Write at (%d, %d) of block"
				" 0x%X at phase %d failed: could not"
				" communicate with VMU", mdev->port,
				mdev->unit, num, x);
			FUNC1(&mdev->busy, 0);
			FUNC6(mdev->mq->sendbuf);
			mdev->mq->sendbuf = NULL;
			FUNC8(&(mdev->mq->list));
			goto fail_nolock;
		}
	}
	FUNC6(sendbuf);

	return card->blocklen;

fail_nolock:
	FUNC6(sendbuf);
fail_nosendbuf:
	FUNC3(&mdev->dev, "VMU (%d, %d): write failed\n", mdev->port,
		mdev->unit);
	return error;
}