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
struct vimc_deb_device {int /*<<< orphan*/  src_code; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 struct v4l2_mbus_framefmt sink_fmt_default ; 
 struct vimc_deb_device* FUNC0 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg)
{
	struct vimc_deb_device *vdeb = FUNC0(sd);
	struct v4l2_mbus_framefmt *mf;
	unsigned int i;

	mf = FUNC1(sd, cfg, 0);
	*mf = sink_fmt_default;

	for (i = 1; i < sd->entity.num_pads; i++) {
		mf = FUNC1(sd, cfg, i);
		*mf = sink_fmt_default;
		mf->code = vdeb->src_code;
	}

	return 0;
}