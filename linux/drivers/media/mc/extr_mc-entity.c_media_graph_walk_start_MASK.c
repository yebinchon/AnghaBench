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
struct media_graph {size_t top; TYPE_3__* stack; int /*<<< orphan*/  ent_enum; } ;
struct TYPE_5__ {TYPE_1__* mdev; } ;
struct media_entity {int /*<<< orphan*/  name; TYPE_2__ graph_obj; } ;
struct TYPE_6__ {int /*<<< orphan*/ * entity; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct media_graph*,struct media_entity*) ; 

void FUNC4(struct media_graph *graph,
			    struct media_entity *entity)
{
	FUNC2(&graph->ent_enum);
	FUNC1(&graph->ent_enum, entity);

	graph->top = 0;
	graph->stack[graph->top].entity = NULL;
	FUNC3(graph, entity);
	FUNC0(entity->graph_obj.mdev->dev,
		"begin graph walk at '%s'\n", entity->name);
}