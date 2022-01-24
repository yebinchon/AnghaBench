#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_bt_timings {unsigned int width; unsigned int height; } ;
struct aspeed_video {TYPE_1__* srcs; int /*<<< orphan*/  dev; scalar_t__ frame_bottom; scalar_t__ frame_top; scalar_t__ frame_right; scalar_t__ frame_left; struct v4l2_bt_timings active_timings; } ;
struct TYPE_3__ {unsigned int size; int dma; } ;

/* Variables and functions */
 unsigned int DIRECT_FETCH_THRESHOLD ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  VE_CAP_WINDOW ; 
 int /*<<< orphan*/  VE_COMP_WINDOW ; 
 int /*<<< orphan*/  VE_CTRL ; 
 int /*<<< orphan*/  VE_CTRL_DIRECT_FETCH ; 
 int /*<<< orphan*/  VE_CTRL_INT_DE ; 
 int /*<<< orphan*/  VE_SRC0_ADDR ; 
 int /*<<< orphan*/  VE_SRC1_ADDR ; 
 int /*<<< orphan*/  VE_SRC_SCANLINE_OFFSET ; 
 int /*<<< orphan*/  VE_TGS_0 ; 
 int /*<<< orphan*/  VE_TGS_1 ; 
 int /*<<< orphan*/  VE_TGS_FIRST ; 
 int /*<<< orphan*/  VE_TGS_LAST ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_video*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aspeed_video*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct aspeed_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aspeed_video*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct aspeed_video *video)
{
	struct v4l2_bt_timings *act = &video->active_timings;
	unsigned int size = act->width * act->height;

	/* Set capture/compression frame sizes */
	FUNC2(video, size);

	if (video->active_timings.width == 1680) {
		/*
		 * This is a workaround to fix a silicon bug on A1 and A2
		 * revisions. Since it doesn't break capturing operation of
		 * other revisions, use it for all revisions without checking
		 * the revision ID. It picked 1728 which is a very next
		 * 64-pixels aligned value to 1680 to minimize memory bandwidth
		 * and to get better access speed from video engine.
		 */
		FUNC5(video, VE_CAP_WINDOW,
				   1728 << 16 | act->height);
		size += (1728 - 1680) * video->active_timings.height;
	} else {
		FUNC5(video, VE_CAP_WINDOW,
				   act->width << 16 | act->height);
	}
	FUNC5(video, VE_COMP_WINDOW,
			   act->width << 16 | act->height);
	FUNC5(video, VE_SRC_SCANLINE_OFFSET, act->width * 4);

	/* Don't use direct mode below 1024 x 768 (irqs don't fire) */
	if (size < DIRECT_FETCH_THRESHOLD) {
		FUNC5(video, VE_TGS_0,
				   FUNC0(VE_TGS_FIRST,
					      video->frame_left - 1) |
				   FUNC0(VE_TGS_LAST,
					      video->frame_right));
		FUNC5(video, VE_TGS_1,
				   FUNC0(VE_TGS_FIRST, video->frame_top) |
				   FUNC0(VE_TGS_LAST,
					      video->frame_bottom + 1));
		FUNC4(video, VE_CTRL, 0, VE_CTRL_INT_DE);
	} else {
		FUNC4(video, VE_CTRL, 0, VE_CTRL_DIRECT_FETCH);
	}

	size *= 4;

	if (size != video->srcs[0].size) {
		if (video->srcs[0].size)
			FUNC3(video, &video->srcs[0]);
		if (video->srcs[1].size)
			FUNC3(video, &video->srcs[1]);

		if (!FUNC1(video, &video->srcs[0], size))
			goto err_mem;
		if (!FUNC1(video, &video->srcs[1], size))
			goto err_mem;

		FUNC5(video, VE_SRC0_ADDR, video->srcs[0].dma);
		FUNC5(video, VE_SRC1_ADDR, video->srcs[1].dma);
	}

	return;

err_mem:
	FUNC6(video->dev, "Failed to allocate source buffers\n");

	if (video->srcs[0].size)
		FUNC3(video, &video->srcs[0]);
}