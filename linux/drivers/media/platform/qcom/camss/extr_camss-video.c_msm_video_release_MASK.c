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
struct video_device {int /*<<< orphan*/  entity; } ;
struct camss_video {TYPE_1__* camss; int /*<<< orphan*/  lock; int /*<<< orphan*/  q_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct camss_video* FUNC4 (struct video_device*) ; 

__attribute__((used)) static void FUNC5(struct video_device *vdev)
{
	struct camss_video *video = FUNC4(vdev);

	FUNC2(&vdev->entity);

	FUNC3(&video->q_lock);
	FUNC3(&video->lock);

	if (FUNC0(&video->camss->ref_count))
		FUNC1(video->camss);
}