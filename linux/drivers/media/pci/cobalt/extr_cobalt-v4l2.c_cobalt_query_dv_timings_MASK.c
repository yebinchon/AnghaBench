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
struct v4l2_dv_timings {int dummy; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 struct v4l2_dv_timings cea1080p60 ; 
 int /*<<< orphan*/  query_dv_timings ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  video ; 
 struct cobalt_stream* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv_fh,
				    struct v4l2_dv_timings *timings)
{
	struct cobalt_stream *s = FUNC1(file);

	if (s->input == 1) {
		*timings = cea1080p60;
		return 0;
	}
	return FUNC0(s->sd,
			video, query_dv_timings, timings);
}