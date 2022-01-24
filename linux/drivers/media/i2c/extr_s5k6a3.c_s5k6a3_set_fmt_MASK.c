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
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6a3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct v4l2_mbus_framefmt* FUNC0 (struct s5k6a3*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*) ; 
 struct s5k6a3* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				  struct v4l2_subdev_pad_config *cfg,
				  struct v4l2_subdev_format *fmt)
{
	struct s5k6a3 *sensor = FUNC4(sd);
	struct v4l2_mbus_framefmt *mf;

	FUNC3(&fmt->format);

	mf = FUNC0(sensor, cfg, fmt->pad, fmt->which);
	if (mf) {
		FUNC1(&sensor->lock);
		*mf = fmt->format;
		FUNC2(&sensor->lock);
	}
	return 0;
}