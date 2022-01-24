#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mtd_blktrans_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mtd; TYPE_1__* tr; scalar_t__ open; TYPE_3__* rq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  disk; scalar_t__ disk_attributes; } ;
struct TYPE_9__ {int /*<<< orphan*/ * queuedata; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* release ) (struct mtd_blktrans_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtd_table_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC16(struct mtd_blktrans_dev *old)
{
	unsigned long flags;

	if (FUNC10(&mtd_table_mutex)) {
		FUNC11(&mtd_table_mutex);
		FUNC0();
	}

	if (old->disk_attributes)
		FUNC15(&FUNC8(old->disk)->kobj,
						old->disk_attributes);

	/* Stop new requests to arrive */
	FUNC7(old->disk);

	/* Kill current requests */
	FUNC12(&old->queue_lock, flags);
	old->rq->queuedata = NULL;
	FUNC13(&old->queue_lock, flags);

	/* freeze+quiesce queue to ensure all requests are flushed */
	FUNC2(old->rq);
	FUNC3(old->rq);
	FUNC5(old->rq);
	FUNC4(old->rq);

	/* If the device is currently open, tell trans driver to close it,
		then put mtd device, and don't touch it again */
	FUNC9(&old->lock);
	if (old->open) {
		if (old->tr->release)
			old->tr->release(old);
		FUNC1(old->mtd);
	}

	old->mtd = NULL;

	FUNC11(&old->lock);
	FUNC6(old);
	return 0;
}