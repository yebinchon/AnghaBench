#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct media_graph {int dummy; } ;
struct media_entity {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct media_entity*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 struct media_entity* FUNC2 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_graph*,struct media_entity*) ; 

__attribute__((used)) static int FUNC4(struct media_entity *entity, bool enable,
				      struct media_graph *graph)
{
	struct media_entity *entity_err = entity;
	int ret;

	/*
	 * Walk current graph and call the pipeline open/close routine for each
	 * opened video node that belongs to the graph of entities connected
	 * through active links. This is needed as we cannot power on/off the
	 * subdevs in random order.
	 */
	FUNC3(graph, entity);

	while ((entity = FUNC2(graph))) {
		if (!FUNC1(entity))
			continue;

		ret  = FUNC0(entity, enable);

		if (ret < 0)
			goto err;
	}

	return 0;

err:
	FUNC3(graph, entity_err);

	while ((entity_err = FUNC2(graph))) {
		if (!FUNC1(entity_err))
			continue;

		FUNC0(entity_err, !enable);

		if (entity_err == entity)
			break;
	}

	return ret;
}