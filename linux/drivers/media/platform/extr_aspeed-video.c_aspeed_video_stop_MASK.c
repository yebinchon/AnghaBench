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
struct aspeed_video {scalar_t__ flags; int /*<<< orphan*/  v4l2_input_status; TYPE_1__* srcs; int /*<<< orphan*/  res_work; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_IN_ST_NO_SIGNAL ; 
 int /*<<< orphan*/  VIDEO_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct aspeed_video *video)
{
	FUNC3(VIDEO_STOPPED, &video->flags);
	FUNC2(&video->res_work);

	FUNC1(video);

	if (video->srcs[0].size)
		FUNC0(video, &video->srcs[0]);

	if (video->srcs[1].size)
		FUNC0(video, &video->srcs[1]);

	video->v4l2_input_status = V4L2_IN_ST_NO_SIGNAL;
	video->flags = 0;
}