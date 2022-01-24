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
struct media_request_object_ops {int /*<<< orphan*/  release; } ;
struct media_request_object {int /*<<< orphan*/  list; void* priv; struct media_request_object_ops const* ops; struct media_request* req; } ;
struct media_request {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_incomplete_objects; int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 int EBADR ; 
 int EBUSY ; 
 scalar_t__ MEDIA_REQUEST_STATE_UPDATING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct media_request *req,
			      const struct media_request_object_ops *ops,
			      void *priv, bool is_buffer,
			      struct media_request_object *obj)
{
	unsigned long flags;
	int ret = -EBUSY;

	if (FUNC0(!ops->release))
		return -EBADR;

	FUNC3(&req->lock, flags);

	if (FUNC0(req->state != MEDIA_REQUEST_STATE_UPDATING))
		goto unlock;

	obj->req = req;
	obj->ops = ops;
	obj->priv = priv;

	if (is_buffer)
		FUNC2(&obj->list, &req->objects);
	else
		FUNC1(&obj->list, &req->objects);
	req->num_incomplete_objects++;
	ret = 0;

unlock:
	FUNC4(&req->lock, flags);
	return ret;
}