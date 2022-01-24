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
struct vmu_cache {int valid; unsigned char* buffer; unsigned int block; int /*<<< orphan*/  jiffies_atc; } ;
struct mtd_info {struct mdev_part* priv; } ;
struct memcard {int blocklen; int readcnt; unsigned char* blockread; TYPE_1__* parts; } ;
struct mdev_part {int partition; struct maple_device* mdev; } ;
struct maple_device {int /*<<< orphan*/  unit; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; TYPE_2__* mq; int /*<<< orphan*/  busy; int /*<<< orphan*/  maple_wait; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {unsigned char* sendbuf; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {struct vmu_cache* pcache; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  MAPLE_COMMAND_BREAD ; 
 int /*<<< orphan*/  MAPLE_FUNC_MEMCARD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct memcard* FUNC10 (struct maple_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  vmu_blockread ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC14(unsigned int num, unsigned char *buf,
	struct mtd_info *mtd)
{
	struct memcard *card;
	struct mdev_part *mpart;
	struct maple_device *mdev;
	int partition, error = 0, x, wait;
	unsigned char *blockread = NULL;
	struct vmu_cache *pcache;
	__be32 sendbuf;

	mpart = mtd->priv;
	mdev = mpart->mdev;
	partition = mpart->partition;
	card = FUNC10(mdev);
	pcache = card->parts[partition].pcache;
	pcache->valid = 0;

	/* prepare the cache for this block */
	if (!pcache->buffer) {
		pcache->buffer = FUNC7(card->blocklen, GFP_KERNEL);
		if (!pcache->buffer) {
			FUNC3(&mdev->dev, "VMU at (%d, %d) - read fails due"
				" to lack of memory\n", mdev->port,
				mdev->unit);
			error = -ENOMEM;
			goto outB;
		}
	}

	/*
	* Reads may be phased - again the hardware spec
	* supports this - though may not be any devices in
	* the wild that implement it, but we will here
	*/
	for (x = 0; x < card->readcnt; x++) {
		sendbuf = FUNC2(partition << 24 | x << 16 | num);

		if (FUNC0(&mdev->busy) == 1) {
			FUNC13(mdev->maple_wait,
				FUNC0(&mdev->busy) == 0, HZ);
			if (FUNC0(&mdev->busy) == 1) {
				FUNC4(&mdev->dev, "VMU at (%d, %d)"
					" is busy\n", mdev->port, mdev->unit);
				error = -EAGAIN;
				goto outB;
			}
		}

		FUNC1(&mdev->busy, 1);
		blockread = FUNC7(card->blocklen/card->readcnt, GFP_KERNEL);
		if (!blockread) {
			error = -ENOMEM;
			FUNC1(&mdev->busy, 0);
			goto outB;
		}
		card->blockread = blockread;

		FUNC11(mdev, vmu_blockread, 0,
			MAPLE_FUNC_MEMCARD);
		error = FUNC9(mdev, MAPLE_FUNC_MEMCARD,
				MAPLE_COMMAND_BREAD, 2, &sendbuf);
		/* Very long timeouts seem to be needed when box is stressed */
		wait = FUNC13(mdev->maple_wait,
			(FUNC0(&mdev->busy) == 0 ||
			FUNC0(&mdev->busy) == 2), HZ * 3);
		/*
		* MTD layer does not handle hotplugging well
		* so have to return errors when VMU is unplugged
		* in the middle of a read (busy == 2)
		*/
		if (error || FUNC0(&mdev->busy) == 2) {
			if (FUNC0(&mdev->busy) == 2)
				error = -ENXIO;
			FUNC1(&mdev->busy, 0);
			card->blockread = NULL;
			goto outA;
		}
		if (wait == 0 || wait == -ERESTARTSYS) {
			card->blockread = NULL;
			FUNC1(&mdev->busy, 0);
			error = -EIO;
			FUNC8(&(mdev->mq->list));
			FUNC6(mdev->mq->sendbuf);
			mdev->mq->sendbuf = NULL;
			if (wait == -ERESTARTSYS) {
				FUNC5(&mdev->dev, "VMU read on (%d, %d)"
					" interrupted on block 0x%X\n",
					mdev->port, mdev->unit, num);
			} else
				FUNC4(&mdev->dev, "VMU read on (%d, %d)"
					" timed out on block 0x%X\n",
					mdev->port, mdev->unit, num);
			goto outA;
		}

		FUNC12(buf + (card->blocklen/card->readcnt) * x, blockread,
			card->blocklen/card->readcnt);

		FUNC12(pcache->buffer + (card->blocklen/card->readcnt) * x,
			card->blockread, card->blocklen/card->readcnt);
		card->blockread = NULL;
		pcache->block = num;
		pcache->jiffies_atc = jiffies;
		pcache->valid = 1;
		FUNC6(blockread);
	}

	return error;

outA:
	FUNC6(blockread);
outB:
	return error;
}