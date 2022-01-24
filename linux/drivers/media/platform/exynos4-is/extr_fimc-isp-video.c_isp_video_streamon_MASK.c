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
struct media_entity {int dummy; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct exynos_video_entity {TYPE_2__* pipe; TYPE_1__ vdev; } ;
struct TYPE_6__ {int streaming; struct exynos_video_entity ve; } ;
struct fimc_isp {TYPE_3__ video_capture; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_5__ {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
 int FUNC0 (struct fimc_isp*) ; 
 int FUNC1 (struct media_entity*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int FUNC3 (struct file*,void*,int) ; 
 struct fimc_isp* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
				      enum v4l2_buf_type type)
{
	struct fimc_isp *isp = FUNC4(file);
	struct exynos_video_entity *ve = &isp->video_capture.ve;
	struct media_entity *me = &ve->vdev.entity;
	int ret;

	ret = FUNC1(me, &ve->pipe->mp);
	if (ret < 0)
		return ret;

	ret = FUNC0(isp);
	if (ret < 0)
		goto p_stop;

	ret = FUNC3(file, priv, type);
	if (ret < 0)
		goto p_stop;

	isp->video_capture.streaming = 1;
	return 0;
p_stop:
	FUNC2(me);
	return ret;
}