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
struct media_graph {int dummy; } ;
struct TYPE_3__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct isp_video {scalar_t__ type; TYPE_2__ video; } ;
struct isp_pipeline {struct isp_video* output; struct isp_video* input; int /*<<< orphan*/  ent_enum; } ;

/* Variables and functions */
 int EPIPE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_graph*) ; 
 int FUNC4 (struct media_graph*,struct media_device*) ; 
 struct media_entity* FUNC5 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC6 (struct media_graph*,struct media_entity*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct isp_video* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct isp_video *video,
				    struct isp_pipeline *pipe)
{
	struct media_graph graph;
	struct media_entity *entity = &video->video.entity;
	struct media_device *mdev = entity->graph_obj.mdev;
	struct isp_video *far_end = NULL;
	int ret;

	FUNC7(&mdev->graph_mutex);
	ret = FUNC4(&graph, mdev);
	if (ret) {
		FUNC8(&mdev->graph_mutex);
		return ret;
	}

	FUNC6(&graph, entity);

	while ((entity = FUNC5(&graph))) {
		struct isp_video *__video;

		FUNC1(&pipe->ent_enum, entity);

		if (far_end != NULL)
			continue;

		if (entity == &video->video.entity)
			continue;

		if (!FUNC0(entity))
			continue;

		__video = FUNC9(FUNC2(entity));
		if (__video->type != video->type)
			far_end = __video;
	}

	FUNC8(&mdev->graph_mutex);

	FUNC3(&graph);

	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		pipe->input = far_end;
		pipe->output = video;
	} else {
		if (far_end == NULL)
			return -EPIPE;

		pipe->input = video;
		pipe->output = far_end;
	}

	return 0;
}