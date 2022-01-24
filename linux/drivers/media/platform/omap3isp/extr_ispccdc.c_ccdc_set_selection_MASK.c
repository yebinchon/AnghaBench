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
struct v4l2_subdev_selection {scalar_t__ target; scalar_t__ pad; int flags; int /*<<< orphan*/  which; int /*<<< orphan*/  r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_ccdc_device {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CCDC_PAD_SINK ; 
 scalar_t__ CCDC_PAD_SOURCE_OF ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ; 
 int V4L2_SEL_FLAG_KEEP_CONFIG ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 int /*<<< orphan*/ * FUNC0 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,scalar_t__,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ ) ; 
 struct isp_ccdc_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_selection *sel)
{
	struct isp_ccdc_device *ccdc = FUNC4(sd);
	struct v4l2_mbus_framefmt *format;

	if (sel->target != V4L2_SEL_TGT_CROP ||
	    sel->pad != CCDC_PAD_SOURCE_OF)
		return -EINVAL;

	/* The crop rectangle can't be changed while streaming. */
	if (ccdc->state != ISP_PIPELINE_STREAM_STOPPED)
		return -EBUSY;

	/* Modifying the crop rectangle always changes the format on the source
	 * pad. If the KEEP_CONFIG flag is set, just return the current crop
	 * rectangle.
	 */
	if (sel->flags & V4L2_SEL_FLAG_KEEP_CONFIG) {
		sel->r = *FUNC0(ccdc, cfg, sel->which);
		return 0;
	}

	format = FUNC1(ccdc, cfg, CCDC_PAD_SINK, sel->which);
	FUNC2(ccdc, format, &sel->r);
	*FUNC0(ccdc, cfg, sel->which) = sel->r;

	/* Update the source format. */
	format = FUNC1(ccdc, cfg, CCDC_PAD_SOURCE_OF, sel->which);
	FUNC3(ccdc, cfg, CCDC_PAD_SOURCE_OF, format, sel->which);

	return 0;
}