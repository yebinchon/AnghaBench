#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct media_device* mdev; } ;
struct media_entity {TYPE_2__ graph_obj; } ;
struct TYPE_7__ {struct media_entity entity; } ;
struct vsp1_video {TYPE_6__* vsp1; TYPE_1__ video; } ;
struct TYPE_9__ {size_t index; } ;
struct vsp1_rwpf {TYPE_4__* video; TYPE_3__ entity; } ;
struct vsp1_pipeline {scalar_t__ num_inputs; struct vsp1_rwpf* output; struct vsp1_rwpf** inputs; struct vsp1_entity* hgt; struct vsp1_entity* hgo; struct vsp1_entity* brx; struct vsp1_entity* lif; int /*<<< orphan*/  entities; } ;
struct vsp1_entity {int type; struct vsp1_pipeline* pipe; int /*<<< orphan*/  list_pipe; } ;
struct v4l2_subdev {int dummy; } ;
struct media_graph {int dummy; } ;
struct media_device {int dummy; } ;
struct TYPE_12__ {TYPE_5__* info; } ;
struct TYPE_11__ {unsigned int rpf_count; } ;
struct TYPE_10__ {scalar_t__ pipe_index; } ;

/* Variables and functions */
 int EPIPE ; 
#define  VSP1_ENTITY_BRS 134 
#define  VSP1_ENTITY_BRU 133 
#define  VSP1_ENTITY_HGO 132 
#define  VSP1_ENTITY_HGT 131 
#define  VSP1_ENTITY_LIF 130 
#define  VSP1_ENTITY_RPF 129 
#define  VSP1_ENTITY_WPF 128 
 int /*<<< orphan*/  FUNC0 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_graph*) ; 
 int FUNC4 (struct media_graph*,struct media_device*) ; 
 struct media_entity* FUNC5 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC6 (struct media_graph*,struct media_entity*) ; 
 struct vsp1_rwpf* FUNC7 (struct v4l2_subdev*) ; 
 struct vsp1_entity* FUNC8 (struct v4l2_subdev*) ; 
 int FUNC9 (struct vsp1_pipeline*,struct vsp1_rwpf*,struct vsp1_rwpf*) ; 

__attribute__((used)) static int FUNC10(struct vsp1_pipeline *pipe,
				     struct vsp1_video *video)
{
	struct media_graph graph;
	struct media_entity *entity = &video->video.entity;
	struct media_device *mdev = entity->graph_obj.mdev;
	unsigned int i;
	int ret;

	/* Walk the graph to locate the entities and video nodes. */
	ret = FUNC4(&graph, mdev);
	if (ret)
		return ret;

	FUNC6(&graph, entity);

	while ((entity = FUNC5(&graph))) {
		struct v4l2_subdev *subdev;
		struct vsp1_rwpf *rwpf;
		struct vsp1_entity *e;

		if (!FUNC0(entity))
			continue;

		subdev = FUNC2(entity);
		e = FUNC8(subdev);
		FUNC1(&e->list_pipe, &pipe->entities);
		e->pipe = pipe;

		switch (e->type) {
		case VSP1_ENTITY_RPF:
			rwpf = FUNC7(subdev);
			pipe->inputs[rwpf->entity.index] = rwpf;
			rwpf->video->pipe_index = ++pipe->num_inputs;
			break;

		case VSP1_ENTITY_WPF:
			rwpf = FUNC7(subdev);
			pipe->output = rwpf;
			rwpf->video->pipe_index = 0;
			break;

		case VSP1_ENTITY_LIF:
			pipe->lif = e;
			break;

		case VSP1_ENTITY_BRU:
		case VSP1_ENTITY_BRS:
			pipe->brx = e;
			break;

		case VSP1_ENTITY_HGO:
			pipe->hgo = e;
			break;

		case VSP1_ENTITY_HGT:
			pipe->hgt = e;
			break;

		default:
			break;
		}
	}

	FUNC3(&graph);

	/* We need one output and at least one input. */
	if (pipe->num_inputs == 0 || !pipe->output)
		return -EPIPE;

	/*
	 * Follow links downstream for each input and make sure the graph
	 * contains no loop and that all branches end at the output WPF.
	 */
	for (i = 0; i < video->vsp1->info->rpf_count; ++i) {
		if (!pipe->inputs[i])
			continue;

		ret = FUNC9(pipe, pipe->inputs[i],
						       pipe->output);
		if (ret < 0)
			return ret;
	}

	return 0;
}