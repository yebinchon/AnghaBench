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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2685 {int /*<<< orphan*/  cur_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 struct ov2685* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct ov2685 *ov2685 = FUNC1(sd);
	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;

	FUNC0(ov2685->cur_mode, mbus_fmt);

	return 0;
}