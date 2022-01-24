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
struct uvc_streaming {int /*<<< orphan*/  intfnum; TYPE_1__* dev; int /*<<< orphan*/  ctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uvc_streaming*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_streaming*) ; 
 int FUNC3 (struct uvc_streaming*) ; 
 int FUNC4 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 

int FUNC5(struct uvc_streaming *stream)
{
	int ret;

	ret = FUNC3(stream);
	if (ret < 0)
		return ret;

	/* Commit the streaming parameters. */
	ret = FUNC1(stream, &stream->ctrl);
	if (ret < 0)
		goto error_commit;

	ret = FUNC4(stream, GFP_KERNEL);
	if (ret < 0)
		goto error_video;

	return 0;

error_video:
	FUNC0(stream->dev->udev, stream->intfnum, 0);
error_commit:
	FUNC2(stream);

	return ret;
}