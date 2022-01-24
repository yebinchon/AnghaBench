#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {TYPE_1__* mdev; } ;
struct media_link {TYPE_4__* sink; TYPE_3__* source; TYPE_2__ graph_obj; } ;
struct media_graph {int dummy; } ;
struct media_entity {int dummy; } ;
struct TYPE_8__ {struct media_entity* entity; } ;
struct TYPE_7__ {struct media_entity* entity; } ;
struct TYPE_5__ {struct media_graph pm_count_walk; } ;

/* Variables and functions */
 unsigned int MEDIA_DEV_NOTIFY_POST_LINK_CH ; 
 unsigned int MEDIA_DEV_NOTIFY_PRE_LINK_CH ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int FUNC0 (struct media_entity*,int,struct media_graph*) ; 
 int FUNC1 (struct media_entity*,struct media_graph*) ; 

int FUNC2(struct media_link *link, u32 flags,
			      unsigned int notification)
{
	struct media_graph *graph = &link->graph_obj.mdev->pm_count_walk;
	struct media_entity *source = link->source->entity;
	struct media_entity *sink = link->sink->entity;
	int source_use;
	int sink_use;
	int ret = 0;

	source_use = FUNC1(source, graph);
	sink_use = FUNC1(sink, graph);

	if (notification == MEDIA_DEV_NOTIFY_POST_LINK_CH &&
	    !(flags & MEDIA_LNK_FL_ENABLED)) {
		/* Powering off entities is assumed to never fail. */
		FUNC0(source, -sink_use, graph);
		FUNC0(sink, -source_use, graph);
		return 0;
	}

	if (notification == MEDIA_DEV_NOTIFY_PRE_LINK_CH &&
		(flags & MEDIA_LNK_FL_ENABLED)) {

		ret = FUNC0(source, sink_use, graph);
		if (ret < 0)
			return ret;

		ret = FUNC0(sink, source_use, graph);
		if (ret < 0)
			FUNC0(source, -sink_use, graph);
	}

	return ret;
}