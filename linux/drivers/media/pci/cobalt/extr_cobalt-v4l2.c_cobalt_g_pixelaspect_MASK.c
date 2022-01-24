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
struct v4l2_fract {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 struct v4l2_dv_timings cea1080p60 ; 
 int /*<<< orphan*/  g_dv_timings ; 
 struct v4l2_fract FUNC0 (struct v4l2_dv_timings*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  video ; 
 struct cobalt_stream* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				int type, struct v4l2_fract *f)
{
	struct cobalt_stream *s = FUNC2(file);
	struct v4l2_dv_timings timings;
	int err = 0;

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	if (s->input == 1)
		timings = cea1080p60;
	else
		err = FUNC1(s->sd, video, g_dv_timings, &timings);
	if (!err)
		*f = FUNC0(&timings);
	return err;
}