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
struct video_device {int /*<<< orphan*/  queue; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPS ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 struct dvb_usb_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static void FUNC4(struct video_device *vdev)
{
	struct dvb_usb_device *dvbdev = FUNC3(vdev);

	FUNC0(dvbdev, OPS, "video device release\n");

	FUNC1(vdev->queue);

	FUNC2(vdev);
}