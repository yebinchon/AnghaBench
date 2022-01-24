#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {TYPE_2__* ctrl_handler; int /*<<< orphan*/  entity; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct rvin_dev {TYPE_2__ ctrl_handler; TYPE_1__ vdev; TYPE_5__ pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  V4L2_CID_ALPHA_COMPONENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/  rvin_ctrl_ops ; 
 int FUNC1 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*) ; 
 int FUNC3 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct rvin_dev *vin)
{
	int ret;

	vin->pad.flags = MEDIA_PAD_FL_SINK;
	ret = FUNC0(&vin->vdev.entity, 1, &vin->pad);
	if (ret)
		return ret;

	ret = FUNC1(vin);
	if (ret)
		return ret;

	ret = FUNC3(vin);
	if (ret)
		FUNC2(vin);

	ret = FUNC5(&vin->ctrl_handler, 1);
	if (ret < 0)
		return ret;

	FUNC6(&vin->ctrl_handler, &rvin_ctrl_ops,
			  V4L2_CID_ALPHA_COMPONENT, 0, 255, 1, 255);

	if (vin->ctrl_handler.error) {
		ret = vin->ctrl_handler.error;
		FUNC4(&vin->ctrl_handler);
		return ret;
	}

	vin->vdev.ctrl_handler = &vin->ctrl_handler;

	return ret;
}