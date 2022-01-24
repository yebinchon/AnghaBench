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
struct hdpvr_video_info {int /*<<< orphan*/  fps; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  video_input; } ;
struct hdpvr_device {scalar_t__ status; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  worker; int /*<<< orphan*/  udev; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_START_STREAMING_VALUE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_BUFFER ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ STATUS_IDLE ; 
 scalar_t__ STATUS_STREAMING ; 
 int FUNC1 (struct hdpvr_device*,struct hdpvr_video_info*) ; 
 int FUNC2 (struct hdpvr_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 int /*<<< orphan*/  hdpvr_transmit_buffers ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC8(struct hdpvr_device *dev)
{
	int ret;
	struct hdpvr_video_info vidinf;

	if (dev->status == STATUS_STREAMING)
		return 0;
	if (dev->status != STATUS_IDLE)
		return -EAGAIN;

	ret = FUNC1(dev, &vidinf);
	if (ret < 0)
		return ret;

	if (!vidinf.valid) {
		FUNC3(250);
		FUNC7(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
				"no video signal at input %d\n", dev->options.video_input);
		return -EAGAIN;
	}

	FUNC7(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
			"video signal: %dx%d@%dhz\n", vidinf.width,
			vidinf.height, vidinf.fps);

	/* start streaming 2 request */
	ret = FUNC5(dev->udev,
			FUNC6(dev->udev, 0),
			0xb8, 0x38, 0x1, 0, NULL, 0, 8000);
	FUNC7(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
			"encoder start control request returned %d\n", ret);
	if (ret < 0)
		return ret;

	ret = FUNC2(dev, CTRL_START_STREAMING_VALUE, 0x00);
	if (ret)
		return ret;

	dev->status = STATUS_STREAMING;

	FUNC0(&dev->worker, hdpvr_transmit_buffers);
	FUNC4(&dev->worker);

	FUNC7(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
			"streaming started\n");

	return 0;
}