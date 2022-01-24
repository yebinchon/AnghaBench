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
struct v4l2_subdev {int /*<<< orphan*/  entity; int /*<<< orphan*/  v4l2_dev; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct adv748x_csi2 {struct v4l2_subdev* src; TYPE_1__ sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_CSI2_SINK ; 
 int /*<<< orphan*/  MEDIA_LNK_FL_ENABLED ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_device*,struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct adv748x_csi2 *tx,
				      struct v4l2_device *v4l2_dev,
				      struct v4l2_subdev *src,
				      unsigned int src_pad,
				      bool enable)
{
	int ret;

	if (!src->v4l2_dev) {
		ret = FUNC1(v4l2_dev, src);
		if (ret)
			return ret;
	}

	ret = FUNC0(&src->entity, src_pad,
				    &tx->sd.entity, ADV748X_CSI2_SINK,
				    enable ? MEDIA_LNK_FL_ENABLED : 0);
	if (ret)
		return ret;

	if (enable)
		tx->src = src;

	return 0;
}