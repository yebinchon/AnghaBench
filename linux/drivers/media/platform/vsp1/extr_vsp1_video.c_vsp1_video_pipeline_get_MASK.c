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
struct vsp1_video {TYPE_2__* rwpf; } ;
struct vsp1_pipeline {int /*<<< orphan*/  kref; } ;
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_pipeline* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vsp1_pipeline* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vsp1_pipeline*) ; 
 int FUNC5 (struct vsp1_pipeline*,struct vsp1_video*) ; 

__attribute__((used)) static struct vsp1_pipeline *FUNC6(struct vsp1_video *video)
{
	struct vsp1_pipeline *pipe;
	int ret;

	/*
	 * Get a pipeline object for the video node. If a pipeline has already
	 * been allocated just increment its reference count and return it.
	 * Otherwise allocate a new pipeline and initialize it, it will be freed
	 * when the last reference is released.
	 */
	if (!video->rwpf->entity.pipe) {
		pipe = FUNC3(sizeof(*pipe), GFP_KERNEL);
		if (!pipe)
			return FUNC0(-ENOMEM);

		ret = FUNC5(pipe, video);
		if (ret < 0) {
			FUNC4(pipe);
			FUNC1(pipe);
			return FUNC0(ret);
		}
	} else {
		pipe = video->rwpf->entity.pipe;
		FUNC2(&pipe->kref);
	}

	return pipe;
}