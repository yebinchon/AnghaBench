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
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct fimc_source_info {int /*<<< orphan*/  fimc_bus_type; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct TYPE_5__ {TYPE_3__* pipe; TYPE_1__ vdev; } ;
struct fimc_vid_cap {scalar_t__ input; int streaming; scalar_t__ user_subdev_api; struct fimc_source_info source_config; TYPE_2__ ve; } ;
struct fimc_dev {struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_6__ {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPIPE ; 
 int /*<<< orphan*/  FIMC_BUS_TYPE_ISP_WRITEBACK ; 
 scalar_t__ GRP_ID_FIMC_IS ; 
 int /*<<< orphan*/  IDX_SENSOR ; 
 struct v4l2_subdev* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fimc_dev*) ; 
 int FUNC2 (struct fimc_dev*) ; 
 int FUNC3 (struct media_entity*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct media_entity*) ; 
 struct fimc_source_info* FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (struct file*,void*,int) ; 
 struct fimc_dev* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
			     enum v4l2_buf_type type)
{
	struct fimc_dev *fimc = FUNC7(file);
	struct fimc_vid_cap *vc = &fimc->vid_cap;
	struct media_entity *entity = &vc->ve.vdev.entity;
	struct fimc_source_info *si = NULL;
	struct v4l2_subdev *sd;
	int ret;

	if (FUNC1(fimc))
		return -EBUSY;

	ret = FUNC3(entity, &vc->ve.pipe->mp);
	if (ret < 0)
		return ret;

	sd = FUNC0(vc->ve.pipe, IDX_SENSOR);
	if (sd)
		si = FUNC5(sd);

	if (si == NULL) {
		ret = -EPIPE;
		goto err_p_stop;
	}
	/*
	 * Save configuration data related to currently attached image
	 * sensor or other data source, e.g. FIMC-IS.
	 */
	vc->source_config = *si;

	if (vc->input == GRP_ID_FIMC_IS)
		vc->source_config.fimc_bus_type = FIMC_BUS_TYPE_ISP_WRITEBACK;

	if (vc->user_subdev_api) {
		ret = FUNC2(fimc);
		if (ret < 0)
			goto err_p_stop;
	}

	ret = FUNC6(file, priv, type);
	if (!ret) {
		vc->streaming = true;
		return ret;
	}

err_p_stop:
	FUNC4(entity);
	return ret;
}