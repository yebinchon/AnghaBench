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
struct v4l2_input {int index; int /*<<< orphan*/  status; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cobalt_stream {int video_channel; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_IN_CAP_DV_TIMINGS ; 
 int /*<<< orphan*/  g_input_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct cobalt_stream* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv_fh,
				 struct v4l2_input *inp)
{
	struct cobalt_stream *s = FUNC2(file);

	if (inp->index > 1)
		return -EINVAL;
	if (inp->index == 0)
		FUNC0(inp->name, sizeof(inp->name),
				"HDMI-%d", s->video_channel);
	else
		FUNC0(inp->name, sizeof(inp->name),
				"Generator-%d", s->video_channel);
	inp->type = V4L2_INPUT_TYPE_CAMERA;
	inp->capabilities = V4L2_IN_CAP_DV_TIMINGS;
	if (inp->index == 1)
		return 0;
	return FUNC1(s->sd,
			video, g_input_status, &inp->status);
}