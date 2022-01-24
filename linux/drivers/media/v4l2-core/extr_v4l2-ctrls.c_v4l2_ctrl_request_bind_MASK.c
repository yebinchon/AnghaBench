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
struct v4l2_ctrl_handler {int /*<<< orphan*/  requests; int /*<<< orphan*/  req_obj; } ;
struct media_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct media_request*,int /*<<< orphan*/ *,struct v4l2_ctrl_handler*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req_ops ; 
 int FUNC2 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_handler*) ; 

__attribute__((used)) static int FUNC3(struct media_request *req,
			   struct v4l2_ctrl_handler *hdl,
			   struct v4l2_ctrl_handler *from)
{
	int ret;

	ret = FUNC2(hdl, from);

	if (!ret) {
		ret = FUNC1(req, &req_ops,
						from, false, &hdl->req_obj);
		if (!ret)
			FUNC0(&hdl->requests, &from->requests);
	}
	return ret;
}