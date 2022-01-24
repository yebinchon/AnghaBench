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
struct TYPE_2__ {struct fwnode_handle* fwnode; } ;
struct v4l2_async_subdev {TYPE_1__ match; int /*<<< orphan*/  match_type; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 struct fwnode_handle* FUNC0 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*) ; 
 int FUNC2 (struct v4l2_async_notifier*,struct v4l2_async_subdev*) ; 

int
FUNC3(struct v4l2_async_notifier *notif,
					     struct fwnode_handle *endpoint,
					     struct v4l2_async_subdev *asd)
{
	struct fwnode_handle *remote;
	int ret;

	remote = FUNC0(endpoint);
	if (!remote)
		return -ENOTCONN;

	asd->match_type = V4L2_ASYNC_MATCH_FWNODE;
	asd->match.fwnode = remote;

	ret = FUNC2(notif, asd);
	if (ret)
		FUNC1(remote);

	return ret;
}