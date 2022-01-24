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
struct uvc_streaming {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  queue; scalar_t__ frozen; int /*<<< orphan*/  intfnum; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uvc_streaming*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_streaming*) ; 
 int FUNC4 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 

int FUNC5(struct uvc_streaming *stream, int reset)
{
	int ret;

	/* If the bus has been reset on resume, set the alternate setting to 0.
	 * This should be the default value, but some devices crash or otherwise
	 * misbehave if they don't receive a SET_INTERFACE request before any
	 * other video control request.
	 */
	if (reset)
		FUNC0(stream->dev->udev, stream->intfnum, 0);

	stream->frozen = 0;

	FUNC3(stream);

	if (!FUNC2(&stream->queue))
		return 0;

	ret = FUNC1(stream, &stream->ctrl);
	if (ret < 0)
		return ret;

	return FUNC4(stream, GFP_NOIO);
}