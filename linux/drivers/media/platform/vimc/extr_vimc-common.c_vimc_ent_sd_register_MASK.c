#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vimc_ent_device {int /*<<< orphan*/  pads; TYPE_1__* ent; } ;
struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev_internal_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; int /*<<< orphan*/  flags; scalar_t__ ctrl_handler; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; struct v4l2_subdev_internal_ops const* internal_ops; } ;
struct v4l2_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const* const,int) ; 
 int FUNC6 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct vimc_ent_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ; 
 int /*<<< orphan*/  vimc_ent_sd_mops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long const*) ; 

int FUNC11(struct vimc_ent_device *ved,
			 struct v4l2_subdev *sd,
			 struct v4l2_device *v4l2_dev,
			 const char *const name,
			 u32 function,
			 u16 num_pads,
			 const unsigned long *pads_flag,
			 const struct v4l2_subdev_internal_ops *sd_int_ops,
			 const struct v4l2_subdev_ops *sd_ops)
{
	int ret;

	/* Allocate the pads */
	ved->pads = FUNC10(num_pads, pads_flag);
	if (FUNC0(ved->pads))
		return FUNC1(ved->pads);

	/* Fill the vimc_ent_device struct */
	ved->ent = &sd->entity;

	/* Initialize the subdev */
	FUNC8(sd, sd_ops);
	sd->internal_ops = sd_int_ops;
	sd->entity.function = function;
	sd->entity.ops = &vimc_ent_sd_mops;
	sd->owner = THIS_MODULE;
	FUNC5(sd->name, name, sizeof(sd->name));
	FUNC7(sd, ved);

	/* Expose this subdev to user space */
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	if (sd->ctrl_handler)
		sd->flags |= V4L2_SUBDEV_FL_HAS_EVENTS;

	/* Initialize the media entity */
	ret = FUNC4(&sd->entity, num_pads, ved->pads);
	if (ret)
		goto err_clean_pads;

	/* Register the subdev with the v4l2 and the media framework */
	ret = FUNC6(v4l2_dev, sd);
	if (ret) {
		FUNC2(v4l2_dev->dev,
			"%s: subdev register failed (err=%d)\n",
			name, ret);
		goto err_clean_m_ent;
	}

	return 0;

err_clean_m_ent:
	FUNC3(&sd->entity);
err_clean_pads:
	FUNC9(ved->pads);
	return ret;
}