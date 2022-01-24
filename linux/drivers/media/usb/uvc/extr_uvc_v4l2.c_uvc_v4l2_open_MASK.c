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
struct uvc_streaming {int /*<<< orphan*/  chain; int /*<<< orphan*/  vdev; TYPE_1__* dev; } ;
struct uvc_fh {int /*<<< orphan*/  state; struct uvc_streaming* stream; int /*<<< orphan*/  chain; int /*<<< orphan*/  vfh; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UVC_HANDLE_PASSIVE ; 
 int /*<<< orphan*/  UVC_TRACE_CALLS ; 
 int /*<<< orphan*/  FUNC0 (struct uvc_fh*) ; 
 struct uvc_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct uvc_streaming* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct uvc_streaming *stream;
	struct uvc_fh *handle;
	int ret = 0;

	FUNC7(UVC_TRACE_CALLS, "uvc_v4l2_open\n");
	stream = FUNC10(file);

	ret = FUNC4(stream->dev->intf);
	if (ret < 0)
		return ret;

	/* Create the device handle. */
	handle = FUNC1(sizeof(*handle), GFP_KERNEL);
	if (handle == NULL) {
		FUNC5(stream->dev->intf);
		return -ENOMEM;
	}

	FUNC2(&stream->dev->lock);
	if (stream->dev->users == 0) {
		ret = FUNC6(stream->dev, GFP_KERNEL);
		if (ret < 0) {
			FUNC3(&stream->dev->lock);
			FUNC5(stream->dev->intf);
			FUNC0(handle);
			return ret;
		}
	}

	stream->dev->users++;
	FUNC3(&stream->dev->lock);

	FUNC9(&handle->vfh, &stream->vdev);
	FUNC8(&handle->vfh);
	handle->chain = stream->chain;
	handle->stream = stream;
	handle->state = UVC_HANDLE_PASSIVE;
	file->private_data = handle;

	return 0;
}