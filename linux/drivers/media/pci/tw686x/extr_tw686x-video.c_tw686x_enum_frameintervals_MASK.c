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
struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_frmivalenum {int index; TYPE_1__ discrete; int /*<<< orphan*/  type; } ;
struct tw686x_video_channel {int /*<<< orphan*/  video_standard; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_FRMIVAL_TYPE_DISCRETE ; 
 struct tw686x_video_channel* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				      struct v4l2_frmivalenum *ival)
{
	struct tw686x_video_channel *vc = FUNC2(file);
	int max_fps = FUNC1(vc->video_standard);
	int max_rates = FUNC0(max_fps, 2);

	if (ival->index >= max_rates)
		return -EINVAL;

	ival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
	ival->discrete.numerator = 1;
	if (ival->index < (max_rates - 1))
		ival->discrete.denominator = (ival->index + 1) * 2;
	else
		ival->discrete.denominator = max_fps;
	return 0;
}