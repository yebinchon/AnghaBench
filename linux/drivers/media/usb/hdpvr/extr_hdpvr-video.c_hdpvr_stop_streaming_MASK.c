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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct hdpvr_device {scalar_t__ status; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  bulk_in_size; int /*<<< orphan*/  bulk_in_endpointAddr; int /*<<< orphan*/  udev; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  worker; int /*<<< orphan*/  wait_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_URB_TIMEOUT ; 
 int /*<<< orphan*/  CTRL_STOP_STREAMING_VALUE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_BUFFER ; 
 scalar_t__ STATUS_IDLE ; 
 scalar_t__ STATUS_SHUTTING_DOWN ; 
 scalar_t__ STATUS_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdpvr_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct hdpvr_device *dev)
{
	int actual_length;
	uint c = 0;
	u8 *buf;

	if (dev->status == STATUS_IDLE)
		return 0;
	else if (dev->status != STATUS_STREAMING)
		return -EAGAIN;

	buf = FUNC4(dev->bulk_in_size, GFP_KERNEL);
	if (!buf)
		FUNC11(&dev->v4l2_dev, "failed to allocate temporary buffer for emptying the internal device buffer. Next capture start will be slow\n");

	dev->status = STATUS_SHUTTING_DOWN;
	FUNC2(dev, CTRL_STOP_STREAMING_VALUE, 0x00);
	FUNC7(&dev->io_mutex);

	FUNC12(&dev->wait_buffer);
	FUNC5(50);

	FUNC0(&dev->worker);

	FUNC6(&dev->io_mutex);
	/* kill the still outstanding urbs */
	FUNC1(dev);

	/* emptying the device buffer beforeshutting it down */
	while (buf && ++c < 500 &&
	       !FUNC8(dev->udev,
			     FUNC9(dev->udev,
					     dev->bulk_in_endpointAddr),
			     buf, dev->bulk_in_size, &actual_length,
			     BULK_URB_TIMEOUT)) {
		FUNC10(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
			 "%2d: got %d bytes\n", c, actual_length);
	}
	FUNC3(buf);
	FUNC10(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
		 "used %d urbs to empty device buffers\n", c-1);
	FUNC5(10);

	dev->status = STATUS_IDLE;

	return 0;
}