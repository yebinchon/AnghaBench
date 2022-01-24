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
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  graph_mutex; } ;
struct fimc_md {TYPE_1__ media_dev; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int FUNC0 (struct fimc_md*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fimc_md* FUNC4 (struct v4l2_async_notifier*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct v4l2_async_notifier *notifier)
{
	struct fimc_md *fmd = FUNC4(notifier);
	int ret;

	FUNC2(&fmd->media_dev.graph_mutex);

	ret = FUNC0(fmd);
	if (ret < 0)
		goto unlock;

	ret = FUNC5(&fmd->v4l2_dev);
unlock:
	FUNC3(&fmd->media_dev.graph_mutex);
	if (ret < 0)
		return ret;

	return FUNC1(&fmd->media_dev);
}