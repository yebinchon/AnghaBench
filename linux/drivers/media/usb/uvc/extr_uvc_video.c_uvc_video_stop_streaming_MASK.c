#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int bEndpointAddress; } ;
struct uvc_streaming {TYPE_3__* dev; TYPE_1__ header; int /*<<< orphan*/  intfnum; TYPE_2__* intf; } ;
struct TYPE_6__ {int /*<<< orphan*/  udev; } ;
struct TYPE_5__ {int num_altsetting; } ;

/* Variables and functions */
 unsigned int USB_ENDPOINT_DIR_MASK ; 
 unsigned int USB_ENDPOINT_NUMBER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_streaming*) ; 
 int /*<<< orphan*/  FUNC4 (struct uvc_streaming*,int) ; 

void FUNC5(struct uvc_streaming *stream)
{
	FUNC4(stream, 1);

	if (stream->intf->num_altsetting > 1) {
		FUNC1(stream->dev->udev, stream->intfnum, 0);
	} else {
		/* UVC doesn't specify how to inform a bulk-based device
		 * when the video stream is stopped. Windows sends a
		 * CLEAR_FEATURE(HALT) request to the video streaming
		 * bulk endpoint, mimic the same behaviour.
		 */
		unsigned int epnum = stream->header.bEndpointAddress
				   & USB_ENDPOINT_NUMBER_MASK;
		unsigned int dir = stream->header.bEndpointAddress
				 & USB_ENDPOINT_DIR_MASK;
		unsigned int pipe;

		pipe = FUNC2(stream->dev->udev, epnum) | dir;
		FUNC0(stream->dev->udev, pipe);
	}

	FUNC3(stream);
}