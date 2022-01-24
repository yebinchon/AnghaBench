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
struct v4l2_requestbuffers {int dummy; } ;
struct uvc_streaming {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_fh*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
			     struct v4l2_requestbuffers *rb)
{
	struct uvc_fh *handle = fh;
	struct uvc_streaming *stream = handle->stream;
	int ret;

	ret = FUNC2(handle);
	if (ret < 0)
		return ret;

	FUNC0(&stream->mutex);
	ret = FUNC4(&stream->queue, rb);
	FUNC1(&stream->mutex);
	if (ret < 0)
		return ret;

	if (ret == 0)
		FUNC3(handle);

	return 0;
}