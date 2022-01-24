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
struct v4l2_format {scalar_t__ type; } ;
struct uvc_streaming_control {int dummy; } ;
struct uvc_streaming {scalar_t__ type; int /*<<< orphan*/  mutex; struct uvc_frame* cur_frame; struct uvc_format* cur_format; struct uvc_streaming_control ctrl; int /*<<< orphan*/  queue; } ;
struct uvc_frame {int dummy; } ;
struct uvc_format {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct uvc_streaming*,struct v4l2_format*,struct uvc_streaming_control*,struct uvc_format**,struct uvc_frame**) ; 

__attribute__((used)) static int FUNC4(struct uvc_streaming *stream,
	struct v4l2_format *fmt)
{
	struct uvc_streaming_control probe;
	struct uvc_format *format;
	struct uvc_frame *frame;
	int ret;

	if (fmt->type != stream->type)
		return -EINVAL;

	ret = FUNC3(stream, fmt, &probe, &format, &frame);
	if (ret < 0)
		return ret;

	FUNC0(&stream->mutex);

	if (FUNC2(&stream->queue)) {
		ret = -EBUSY;
		goto done;
	}

	stream->ctrl = probe;
	stream->cur_format = format;
	stream->cur_frame = frame;

done:
	FUNC1(&stream->mutex);
	return ret;
}