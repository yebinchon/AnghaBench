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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct sun6i_video {int /*<<< orphan*/  lock; int /*<<< orphan*/  csi; TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct sun6i_video* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct sun6i_video *video = FUNC7(file);
	int ret;

	if (FUNC0(&video->lock))
		return -ERESTARTSYS;

	ret = FUNC4(file);
	if (ret < 0)
		goto unlock;

	ret = FUNC6(&video->vdev.entity, 1);
	if (ret < 0)
		goto fh_release;

	/* check if already powered */
	if (!FUNC3(file))
		goto unlock;

	ret = FUNC2(video->csi, true);
	if (ret < 0)
		goto fh_release;

	FUNC1(&video->lock);
	return 0;

fh_release:
	FUNC5(file);
unlock:
	FUNC1(&video->lock);
	return ret;
}