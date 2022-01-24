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
struct media_request_object {int completed; int /*<<< orphan*/  kref; int /*<<< orphan*/  list; int /*<<< orphan*/ * priv; int /*<<< orphan*/ * req; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct media_request_object *obj)
{
	obj->ops = NULL;
	obj->req = NULL;
	obj->priv = NULL;
	obj->completed = false;
	FUNC0(&obj->list);
	FUNC1(&obj->kref);
}