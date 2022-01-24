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
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct exynos_video_entity {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int reqbufs_count; int /*<<< orphan*/  pending_buf_q; scalar_t__ buf_index; int /*<<< orphan*/  active_buf_q; struct exynos_video_entity ve; } ;
struct TYPE_4__ {int /*<<< orphan*/  vb2_buf; } ;
struct fimc_vid_buffer {TYPE_2__ vb; } ;
struct fimc_dev {int /*<<< orphan*/  state; struct fimc_vid_cap vid_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ST_CAPT_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_dev*) ; 
 struct fimc_vid_buffer* FUNC4 (struct fimc_vid_cap*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_video_entity*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct fimc_dev *fimc)
{
	struct fimc_vid_cap *vid_cap = &fimc->vid_cap;
	struct exynos_video_entity *ve = &vid_cap->ve;
	struct fimc_vid_buffer *buf;
	int i;

	if (!FUNC7(ST_CAPT_SUSPENDED, &fimc->state))
		return 0;

	FUNC0(&fimc->vid_cap.active_buf_q);
	vid_cap->buf_index = 0;
	FUNC5(ve, open, &ve->vdev.entity, false);
	FUNC3(fimc);

	FUNC2(ST_CAPT_SUSPENDED, &fimc->state);

	for (i = 0; i < vid_cap->reqbufs_count; i++) {
		if (FUNC6(&vid_cap->pending_buf_q))
			break;
		buf = FUNC4(vid_cap);
		FUNC1(&buf->vb.vb2_buf);
	}
	return 0;

}