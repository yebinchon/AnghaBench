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
struct uvc_video_chain {int dummy; } ;
struct TYPE_2__ {scalar_t__ prev; scalar_t__ next; } ;
struct uvc_entity {int /*<<< orphan*/  id; TYPE_1__ chain; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UVC_TRACE_DESCR ; 
 int /*<<< orphan*/  UVC_TRACE_PROBE ; 
 scalar_t__ FUNC0 (struct uvc_video_chain*,struct uvc_entity**) ; 
 scalar_t__ FUNC1 (struct uvc_video_chain*,struct uvc_entity*) ; 
 scalar_t__ FUNC2 (struct uvc_video_chain*,struct uvc_entity*,struct uvc_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct uvc_video_chain *chain,
			  struct uvc_entity *term)
{
	struct uvc_entity *entity, *prev;

	FUNC3(UVC_TRACE_PROBE, "Scanning UVC chain:");

	entity = term;
	prev = NULL;

	while (entity != NULL) {
		/* Entity must not be part of an existing chain */
		if (entity->chain.next || entity->chain.prev) {
			FUNC3(UVC_TRACE_DESCR, "Found reference to "
				"entity %d already in chain.\n", entity->id);
			return -EINVAL;
		}

		/* Process entity */
		if (FUNC1(chain, entity) < 0)
			return -EINVAL;

		/* Forward scan */
		if (FUNC2(chain, entity, prev) < 0)
			return -EINVAL;

		/* Backward scan */
		prev = entity;
		if (FUNC0(chain, &entity) < 0)
			return -EINVAL;
	}

	return 0;
}