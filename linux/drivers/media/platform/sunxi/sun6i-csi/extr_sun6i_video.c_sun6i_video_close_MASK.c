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
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sun6i_video* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct sun6i_video *video = FUNC6(file);
	bool last_fh;

	FUNC1(&video->lock);

	last_fh = FUNC4(file);

	FUNC0(file, NULL);

	FUNC5(&video->vdev.entity, 0);

	if (last_fh)
		FUNC3(video->csi, false);

	FUNC2(&video->lock);

	return 0;
}