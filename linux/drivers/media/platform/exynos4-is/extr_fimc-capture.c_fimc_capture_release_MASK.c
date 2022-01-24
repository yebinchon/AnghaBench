#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  use_count; } ;
struct TYPE_7__ {TYPE_3__ entity; } ;
struct TYPE_10__ {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int streaming; TYPE_4__ ve; } ;
struct fimc_dev {int /*<<< orphan*/  lock; TYPE_2__* pdev; int /*<<< orphan*/  state; struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CAPT_BUSY ; 
 int /*<<< orphan*/  ST_CAPT_SUSPENDED ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct file*) ; 
 struct fimc_dev* FUNC12 (struct file*) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct fimc_dev *fimc = FUNC12(file);
	struct fimc_vid_cap *vc = &fimc->vid_cap;
	bool close = FUNC11(file);
	int ret;

	FUNC2("pid: %d, state: 0x%lx", FUNC10(current), fimc->state);

	FUNC7(&fimc->lock);

	if (close && vc->streaming) {
		FUNC6(&vc->ve.vdev.entity);
		vc->streaming = false;
	}

	ret = FUNC0(file, NULL);

	if (close) {
		FUNC1(ST_CAPT_BUSY, &fimc->state);
		FUNC5(&vc->ve, close);
		FUNC1(ST_CAPT_SUSPENDED, &fimc->state);

		FUNC3(&vc->ve);
		vc->ve.vdev.entity.use_count--;
		FUNC4(&vc->ve);
	}

	FUNC9(&fimc->pdev->dev);
	FUNC8(&fimc->lock);

	return ret;
}