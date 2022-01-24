#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dev_debug; int /*<<< orphan*/  prio; int /*<<< orphan*/ * valid_ioctls; TYPE_2__* v4l2_dev; int /*<<< orphan*/  flags; struct v4l2_ioctl_ops* ioctl_ops; } ;
struct v4l2_ioctl_ops {long (* vidioc_default ) (struct file*,void*,int,unsigned int,void*) ;} ;
typedef  struct v4l2_ioctl_info {int flags; unsigned int ioctl; long (* func ) (struct v4l2_ioctl_ops const*,struct file*,void*,void*) ;int /*<<< orphan*/  (* debug ) (void*,int) ;} const v4l2_ioctl_info ;
struct v4l2_fh {int /*<<< orphan*/  prio; scalar_t__ ctrl_handler; } ;
struct mutex {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_4__ {TYPE_1__* mdev; } ;
struct TYPE_3__ {struct mutex req_queue_mutex; } ;

/* Variables and functions */
 long ENODEV ; 
 long ENOTTY ; 
 long ERESTARTSYS ; 
 int INFO_FL_CTRL ; 
 int INFO_FL_PRIO ; 
 int V4L2_DEV_DEBUG_IOCTL ; 
 int V4L2_DEV_DEBUG_IOCTL_ARG ; 
 int V4L2_DEV_DEBUG_STREAMING ; 
 size_t V4L2_FL_USES_V4L2_FH ; 
 unsigned int VIDIOC_DQBUF ; 
 unsigned int VIDIOC_QBUF ; 
 unsigned int VIDIOC_STREAMOFF ; 
 unsigned int VIDIOC_STREAMON ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ _IOC_NONE ; 
 size_t FUNC1 (unsigned int) ; 
 scalar_t__ _IOC_WRITE ; 
 scalar_t__ FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 long FUNC6 (struct v4l2_ioctl_ops const*,struct file*,void*,void*) ; 
 long FUNC7 (struct file*,void*,int,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 scalar_t__ FUNC10 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 struct mutex* FUNC12 (struct video_device*,struct v4l2_fh*,unsigned int,void*) ; 
 struct v4l2_ioctl_info const* v4l2_ioctls ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 long FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned int) ; 
 struct video_device* FUNC17 (struct file*) ; 
 int /*<<< orphan*/  FUNC18 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct video_device*) ; 

__attribute__((used)) static long FUNC20(struct file *file,
		unsigned int cmd, void *arg)
{
	struct video_device *vfd = FUNC17(file);
	struct mutex *req_queue_lock = NULL;
	struct mutex *lock; /* ioctl serialization mutex */
	const struct v4l2_ioctl_ops *ops = vfd->ioctl_ops;
	bool write_only = false;
	struct v4l2_ioctl_info default_info;
	const struct v4l2_ioctl_info *info;
	void *fh = file->private_data;
	struct v4l2_fh *vfh = NULL;
	int dev_debug = vfd->dev_debug;
	long ret = -ENOTTY;

	if (ops == NULL) {
		FUNC5("%s: has no ioctl_ops.\n",
				FUNC18(vfd));
		return ret;
	}

	if (FUNC10(V4L2_FL_USES_V4L2_FH, &vfd->flags))
		vfh = file->private_data;

	/*
	 * We need to serialize streamon/off with queueing new requests.
	 * These ioctls may trigger the cancellation of a streaming
	 * operation, and that should not be mixed with queueing a new
	 * request at the same time.
	 */
	if (FUNC11(vfd->v4l2_dev) &&
	    (cmd == VIDIOC_STREAMON || cmd == VIDIOC_STREAMOFF)) {
		req_queue_lock = &vfd->v4l2_dev->mdev->req_queue_mutex;

		if (FUNC2(req_queue_lock))
			return -ERESTARTSYS;
	}

	lock = FUNC12(vfd, vfh, cmd, arg);

	if (lock && FUNC2(lock)) {
		if (req_queue_lock)
			FUNC3(req_queue_lock);
		return -ERESTARTSYS;
	}

	if (!FUNC19(vfd)) {
		ret = -ENODEV;
		goto unlock;
	}

	if (FUNC13(cmd)) {
		info = &v4l2_ioctls[FUNC1(cmd)];

		if (!FUNC10(FUNC1(cmd), vfd->valid_ioctls) &&
		    !((info->flags & INFO_FL_CTRL) && vfh && vfh->ctrl_handler))
			goto done;

		if (vfh && (info->flags & INFO_FL_PRIO)) {
			ret = FUNC14(vfd->prio, vfh->prio);
			if (ret)
				goto done;
		}
	} else {
		default_info.ioctl = cmd;
		default_info.flags = 0;
		default_info.debug = v4l_print_default;
		info = &default_info;
	}

	write_only = FUNC0(cmd) == _IOC_WRITE;
	if (info != &default_info) {
		ret = info->func(ops, file, fh, arg);
	} else if (!ops->vidioc_default) {
		ret = -ENOTTY;
	} else {
		ret = ops->vidioc_default(file, fh,
			vfh ? FUNC14(vfd->prio, vfh->prio) >= 0 : 0,
			cmd, arg);
	}

done:
	if (dev_debug & (V4L2_DEV_DEBUG_IOCTL | V4L2_DEV_DEBUG_IOCTL_ARG)) {
		if (!(dev_debug & V4L2_DEV_DEBUG_STREAMING) &&
		    (cmd == VIDIOC_QBUF || cmd == VIDIOC_DQBUF))
			goto unlock;

		FUNC16(FUNC18(vfd), cmd);
		if (ret < 0)
			FUNC4(": error %ld", ret);
		if (!(dev_debug & V4L2_DEV_DEBUG_IOCTL_ARG))
			FUNC4("\n");
		else if (FUNC0(cmd) == _IOC_NONE)
			info->debug(arg, write_only);
		else {
			FUNC4(": ");
			info->debug(arg, write_only);
		}
	}

unlock:
	if (lock)
		FUNC3(lock);
	if (req_queue_lock)
		FUNC3(req_queue_lock);
	return ret;
}