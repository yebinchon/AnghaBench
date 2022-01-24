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
struct media_graph {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mdev; } ;
struct media_entity {int /*<<< orphan*/  name; TYPE_2__ graph_obj; } ;
struct TYPE_6__ {int /*<<< orphan*/  links; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_graph*) ; 
 struct media_entity* FUNC3 (struct media_graph*) ; 
 TYPE_3__* FUNC4 (struct media_graph*) ; 

struct media_entity *FUNC5(struct media_graph *graph)
{
	struct media_entity *entity;

	if (FUNC4(graph) == NULL)
		return NULL;

	/*
	 * Depth first search. Push entity to stack and continue from
	 * top of the stack until no more entities on the level can be
	 * found.
	 */
	while (FUNC1(graph) != &FUNC4(graph)->links)
		FUNC2(graph);

	entity = FUNC3(graph);
	FUNC0(entity->graph_obj.mdev->dev,
		"walk: returning entity '%s'\n", entity->name);

	return entity;
}