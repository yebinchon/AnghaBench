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
 scalar_t__ FUNC0 (struct media_entity*) ; 
 struct media_entity* FUNC1 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_graph*,struct media_entity*) ; 
 int FUNC3 (struct media_entity*,int) ; 

__attribute__((used)) static int FUNC4(struct media_entity *entity, int change,
	struct media_graph *graph)
{
	struct media_entity *first = entity;
	int ret = 0;

	if (!change)
		return 0;

	FUNC2(graph, entity);

	while (!ret && (entity = FUNC1(graph)))
		if (FUNC0(entity))
			ret = FUNC3(entity, change);

	if (!ret)
		return ret;

	FUNC2(graph, first);

	while ((first = FUNC1(graph))
	       && first != entity)
		if (FUNC0(first))
			FUNC3(first, -change);

	return ret;
}