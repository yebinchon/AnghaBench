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
struct TYPE_2__ {int width; int /*<<< orphan*/  height; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int width; int stride; int bpp; int /*<<< orphan*/  height; struct v4l2_dv_timings timings; int /*<<< orphan*/  sd; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int EBUSY ; 
 struct v4l2_dv_timings cea1080p60 ; 
 int /*<<< orphan*/  s_dv_timings ; 
 scalar_t__ FUNC0 (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct cobalt_stream* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv_fh,
				    struct v4l2_dv_timings *timings)
{
	struct cobalt_stream *s = FUNC3(file);
	int err;

	if (s->input == 1) {
		*timings = cea1080p60;
		return 0;
	}

	if (FUNC0(timings, &s->timings, 0, true))
		return 0;

	if (FUNC2(&s->q))
		return -EBUSY;

	err = FUNC1(s->sd,
			video, s_dv_timings, timings);
	if (!err) {
		s->timings = *timings;
		s->width = timings->bt.width;
		s->height = timings->bt.height;
		s->stride = timings->bt.width * s->bpp;
	}
	return err;
}