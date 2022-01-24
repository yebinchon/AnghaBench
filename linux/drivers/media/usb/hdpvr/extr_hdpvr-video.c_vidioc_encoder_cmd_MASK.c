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
struct v4l2_encoder_cmd {int cmd; scalar_t__ flags; } ;
struct hdpvr_device {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * owner; int /*<<< orphan*/  status; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  STATUS_IDLE ; 
 int /*<<< orphan*/  STATUS_STREAMING ; 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int /*<<< orphan*/  hdpvr_debug ; 
 int FUNC0 (struct hdpvr_device*) ; 
 int FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 struct hdpvr_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *filp, void *priv,
			       struct v4l2_encoder_cmd *a)
{
	struct hdpvr_device *dev = FUNC5(filp);
	int res = 0;

	FUNC2(&dev->io_mutex);
	a->flags = 0;

	switch (a->cmd) {
	case V4L2_ENC_CMD_START:
		if (dev->owner && filp->private_data != dev->owner) {
			res = -EBUSY;
			break;
		}
		if (dev->status == STATUS_STREAMING)
			break;
		res = FUNC0(dev);
		if (!res)
			dev->owner = filp->private_data;
		else
			dev->status = STATUS_IDLE;
		break;
	case V4L2_ENC_CMD_STOP:
		if (dev->owner && filp->private_data != dev->owner) {
			res = -EBUSY;
			break;
		}
		if (dev->status == STATUS_IDLE)
			break;
		res = FUNC1(dev);
		if (!res)
			dev->owner = NULL;
		break;
	default:
		FUNC4(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
			 "Unsupported encoder cmd %d\n", a->cmd);
		res = -EINVAL;
		break;
	}

	FUNC3(&dev->io_mutex);
	return res;
}