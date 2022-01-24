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
struct uvc_streaming {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
			       enum v4l2_buf_type type)
{
	struct uvc_fh *handle = fh;
	struct uvc_streaming *stream = handle->stream;

	if (!FUNC2(handle))
		return -EBUSY;

	FUNC0(&stream->mutex);
	FUNC3(&stream->queue, type);
	FUNC1(&stream->mutex);

	return 0;
}