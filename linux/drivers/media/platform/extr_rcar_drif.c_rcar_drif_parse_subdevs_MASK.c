#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_5__ {struct fwnode_handle* fwnode; } ;
struct TYPE_7__ {int /*<<< orphan*/  match_type; TYPE_1__ match; } ;
struct TYPE_6__ {TYPE_3__ asd; } ;
struct rcar_drif_sdr {TYPE_2__ ep; TYPE_4__* dev; struct v4l2_async_notifier notifier; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 struct fwnode_handle* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rcar_drif_sdr*,struct fwnode_handle*) ; 
 int FUNC6 (struct v4l2_async_notifier*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC8(struct rcar_drif_sdr *sdr)
{
	struct v4l2_async_notifier *notifier = &sdr->notifier;
	struct fwnode_handle *fwnode, *ep;
	int ret;

	FUNC7(notifier);

	ep = FUNC1(FUNC4(sdr->dev->of_node),
					    NULL);
	if (!ep)
		return 0;

	fwnode = FUNC2(ep);
	if (!fwnode) {
		FUNC0(sdr->dev, "bad remote port parent\n");
		FUNC3(ep);
		return -EINVAL;
	}

	sdr->ep.asd.match.fwnode = fwnode;
	sdr->ep.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
	ret = FUNC6(notifier, &sdr->ep.asd);
	if (ret) {
		FUNC3(fwnode);
		return ret;
	}

	/* Get the endpoint properties */
	FUNC5(sdr, ep);

	FUNC3(fwnode);
	FUNC3(ep);

	return 0;
}