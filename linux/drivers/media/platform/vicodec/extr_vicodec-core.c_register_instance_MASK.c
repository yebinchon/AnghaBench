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
struct video_device {int device_caps; int /*<<< orphan*/  num; int /*<<< orphan*/  name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct vicodec_dev_instance {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  mutex; struct video_device vfd; int /*<<< orphan*/  lock; } ;
struct vicodec_dev {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VIDIOC_DECODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_ENCODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_TRY_DECODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_TRY_ENCODER_CMD ; 
 int /*<<< orphan*/  m2m_ops ; 
 scalar_t__ multiplanar ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct video_device vicodec_videodev ; 
 int FUNC10 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct video_device*,struct vicodec_dev*) ; 

__attribute__((used)) static int FUNC12(struct vicodec_dev *dev,
			     struct vicodec_dev_instance *dev_instance,
			     const char *name, bool is_enc)
{
	struct video_device *vfd;
	int ret;

	FUNC3(&dev_instance->lock);
	FUNC2(&dev_instance->mutex);
	dev_instance->m2m_dev = FUNC8(&m2m_ops);
	if (FUNC0(dev_instance->m2m_dev)) {
		FUNC6(&dev->v4l2_dev, "Failed to init vicodec enc device\n");
		return FUNC1(dev_instance->m2m_dev);
	}

	dev_instance->vfd = vicodec_videodev;
	vfd = &dev_instance->vfd;
	vfd->lock = &dev_instance->mutex;
	vfd->v4l2_dev = &dev->v4l2_dev;
	FUNC4(vfd->name, name, sizeof(vfd->name));
	vfd->device_caps = V4L2_CAP_STREAMING |
		(multiplanar ? V4L2_CAP_VIDEO_M2M_MPLANE : V4L2_CAP_VIDEO_M2M);
	if (is_enc) {
		FUNC5(vfd, VIDIOC_DECODER_CMD);
		FUNC5(vfd, VIDIOC_TRY_DECODER_CMD);
	} else {
		FUNC5(vfd, VIDIOC_ENCODER_CMD);
		FUNC5(vfd, VIDIOC_TRY_ENCODER_CMD);
	}
	FUNC11(vfd, dev);

	ret = FUNC10(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC6(&dev->v4l2_dev, "Failed to register video device '%s'\n", name);
		FUNC9(dev_instance->m2m_dev);
		return ret;
	}
	FUNC7(&dev->v4l2_dev, "Device '%s' registered as /dev/video%d\n",
		  name, vfd->num);
	return 0;
}