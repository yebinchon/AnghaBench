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
struct vsp1_histogram {int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISTO_MAX_SIZE ; 
 int /*<<< orphan*/  HISTO_MIN_SIZE ; 
 scalar_t__ HISTO_PAD_SINK ; 
 int FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 struct vsp1_histogram* FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *subdev,
			    struct v4l2_subdev_pad_config *cfg,
			    struct v4l2_subdev_format *fmt)
{
	struct vsp1_histogram *histo = FUNC1(subdev);

	if (fmt->pad != HISTO_PAD_SINK)
		return FUNC0(subdev, cfg, fmt);

	return FUNC2(subdev, cfg, fmt,
					  histo->formats, histo->num_formats,
					  HISTO_MIN_SIZE, HISTO_MIN_SIZE,
					  HISTO_MAX_SIZE, HISTO_MAX_SIZE);
}