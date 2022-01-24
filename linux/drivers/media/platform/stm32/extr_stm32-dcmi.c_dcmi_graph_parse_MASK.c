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
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_5__ {TYPE_1__ match; int /*<<< orphan*/  match_type; } ;
struct TYPE_6__ {TYPE_2__ asd; struct device_node* remote_node; } ;
struct stm32_dcmi {TYPE_3__ entity; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct stm32_dcmi *dcmi, struct device_node *node)
{
	struct device_node *ep = NULL;
	struct device_node *remote;

	ep = FUNC1(node, ep);
	if (!ep)
		return -EINVAL;

	remote = FUNC2(ep);
	FUNC3(ep);
	if (!remote)
		return -EINVAL;

	/* Remote node to connect */
	dcmi->entity.remote_node = remote;
	dcmi->entity.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
	dcmi->entity.asd.match.fwnode = FUNC0(remote);
	return 0;
}