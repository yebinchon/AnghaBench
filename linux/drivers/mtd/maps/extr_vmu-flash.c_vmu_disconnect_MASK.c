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
struct memcard {int partitions; struct memcard* mtd; struct memcard* parts; struct memcard* name; struct mdev_part* priv; } ;
struct mdev_part {int /*<<< orphan*/ * mdev; } ;
struct maple_device {int /*<<< orphan*/ * callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct memcard*) ; 
 struct memcard* FUNC1 (struct maple_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct memcard*) ; 

__attribute__((used)) static void FUNC3(struct maple_device *mdev)
{
	struct memcard *card;
	struct mdev_part *mpart;
	int x;

	mdev->callback = NULL;
	card = FUNC1(mdev);
	for (x = 0; x < card->partitions; x++) {
		mpart = ((card->mtd)[x]).priv;
		mpart->mdev = NULL;
		FUNC2(&((card->mtd)[x]));
		FUNC0(((card->parts)[x]).name);
	}
	FUNC0(card->parts);
	FUNC0(card->mtd);
	FUNC0(card);
}