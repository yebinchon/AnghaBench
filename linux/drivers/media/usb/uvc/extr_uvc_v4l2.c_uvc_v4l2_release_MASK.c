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
struct uvc_streaming {TYPE_1__* dev; int /*<<< orphan*/  queue; } ;
struct uvc_fh {int /*<<< orphan*/  vfh; struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ users; int /*<<< orphan*/  intf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_TRACE_CALLS ; 
 int /*<<< orphan*/  FUNC0 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uvc_fh*) ; 
 scalar_t__ FUNC5 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct uvc_fh *handle = file->private_data;
	struct uvc_streaming *stream = handle->stream;

	FUNC8(UVC_TRACE_CALLS, "uvc_v4l2_release\n");

	/* Only free resources if this is a privileged handle. */
	if (FUNC5(handle))
		FUNC6(&stream->queue);

	/* Release the file handle. */
	FUNC4(handle);
	FUNC9(&handle->vfh);
	FUNC10(&handle->vfh);
	FUNC0(handle);
	file->private_data = NULL;

	FUNC1(&stream->dev->lock);
	if (--stream->dev->users == 0)
		FUNC7(stream->dev);
	FUNC2(&stream->dev->lock);

	FUNC3(stream->dev->intf);
	return 0;
}