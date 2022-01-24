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
struct v4l2_fract {int numerator; int /*<<< orphan*/  denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int /*<<< orphan*/  stream_mutex; int /*<<< orphan*/  fps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mt9v111_dev* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				    struct v4l2_subdev_frame_interval *ival)
{
	struct mt9v111_dev *mt9v111 = FUNC2(sd);
	struct v4l2_fract *tpf = &ival->interval;

	FUNC0(&mt9v111->stream_mutex);

	tpf->numerator = 1;
	tpf->denominator = mt9v111->fps;

	FUNC1(&mt9v111->stream_mutex);

	return 0;
}