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
struct TYPE_7__ {int port; size_t id; } ;
struct v4l2_fwnode_endpoint {TYPE_3__ base; } ;
struct TYPE_6__ {scalar_t__ fwnode; } ;
struct v4l2_async_subdev {TYPE_2__ match; } ;
struct rvin_dev {TYPE_4__* group; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_1__* csi; } ;
struct TYPE_5__ {scalar_t__ fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 size_t RVIN_CSI_MAX ; 
 struct rvin_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rvin_dev*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				     struct v4l2_fwnode_endpoint *vep,
				     struct v4l2_async_subdev *asd)
{
	struct rvin_dev *vin = FUNC0(dev);
	int ret = 0;

	if (vep->base.port != 1 || vep->base.id >= RVIN_CSI_MAX)
		return -EINVAL;

	if (!FUNC3(FUNC4(asd->match.fwnode))) {
		FUNC5(vin, "OF device %pOF disabled, ignoring\n",
			FUNC4(asd->match.fwnode));
		return -ENOTCONN;
	}

	FUNC1(&vin->group->lock);

	if (vin->group->csi[vep->base.id].fwnode) {
		FUNC5(vin, "OF device %pOF already handled\n",
			FUNC4(asd->match.fwnode));
		ret = -ENOTCONN;
		goto out;
	}

	vin->group->csi[vep->base.id].fwnode = asd->match.fwnode;

	FUNC5(vin, "Add group OF device %pOF to slot %u\n",
		FUNC4(asd->match.fwnode), vep->base.id);
out:
	FUNC2(&vin->group->lock);

	return ret;
}