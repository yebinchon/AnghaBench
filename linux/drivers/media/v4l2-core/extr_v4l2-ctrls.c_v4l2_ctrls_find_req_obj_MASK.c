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
struct media_request_object {int dummy; } ;
struct v4l2_ctrl_handler {int nr_of_buckets; struct media_request_object req_obj; } ;
struct media_request {scalar_t__ state; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct media_request_object* FUNC0 (struct media_request*) ; 
 struct media_request_object* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct media_request*) ; 
 scalar_t__ MEDIA_REQUEST_STATE_UPDATING ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*) ; 
 struct v4l2_ctrl_handler* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct media_request_object* FUNC6 (struct media_request*,int /*<<< orphan*/ *,struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC7 (struct media_request_object*) ; 
 int /*<<< orphan*/  req_ops ; 
 int FUNC8 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC9 (struct media_request*,struct v4l2_ctrl_handler*,struct v4l2_ctrl_handler*) ; 

__attribute__((used)) static struct media_request_object *
FUNC10(struct v4l2_ctrl_handler *hdl,
			struct media_request *req, bool set)
{
	struct media_request_object *obj;
	struct v4l2_ctrl_handler *new_hdl;
	int ret;

	if (FUNC2(req))
		return FUNC0(req);

	if (set && FUNC3(req->state != MEDIA_REQUEST_STATE_UPDATING))
		return FUNC1(-EBUSY);

	obj = FUNC6(req, &req_ops, hdl);
	if (obj)
		return obj;
	if (!set)
		return FUNC1(-ENOENT);

	new_hdl = FUNC5(sizeof(*new_hdl), GFP_KERNEL);
	if (!new_hdl)
		return FUNC1(-ENOMEM);

	obj = &new_hdl->req_obj;
	ret = FUNC8(new_hdl, (hdl->nr_of_buckets - 1) * 8);
	if (!ret)
		ret = FUNC9(req, new_hdl, hdl);
	if (ret) {
		FUNC4(new_hdl);

		return FUNC1(ret);
	}

	FUNC7(obj);
	return obj;
}