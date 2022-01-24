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
struct vb2_queue {scalar_t__ type; } ;
struct au0828_dev {scalar_t__ streaming_users; int vid_timeout_running; int vbi_timeout_running; int /*<<< orphan*/  vbi_timeout; int /*<<< orphan*/  vid_timeout; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  max_pkt_size; scalar_t__ vbi_frame_count; scalar_t__ frame_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU0828_ISO_PACKETS_PER_URB ; 
 int /*<<< orphan*/  AU0828_MAX_ISO_BUFS ; 
 int HZ ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int FUNC1 (struct au0828_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au0828_isoc_copy ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct au0828_dev* FUNC6 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

int FUNC7(struct vb2_queue *vq, unsigned int count)
{
	struct au0828_dev *dev = FUNC6(vq);
	int rc = 0;

	FUNC2(1, "au0828_start_analog_streaming called %d\n",
		dev->streaming_users);

	if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		dev->frame_count = 0;
	else
		dev->vbi_frame_count = 0;

	if (dev->streaming_users == 0) {
		/* If we were doing ac97 instead of i2s, it would go here...*/
		FUNC0(dev);
		rc = FUNC1(dev, AU0828_ISO_PACKETS_PER_URB,
				   AU0828_MAX_ISO_BUFS, dev->max_pkt_size,
				   au0828_isoc_copy);
		if (rc < 0) {
			FUNC4("au0828_init_isoc failed\n");
			return rc;
		}

		FUNC5(&dev->v4l2_dev, 0, video, s_stream, 1);

		if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
			dev->vid_timeout_running = 1;
			FUNC3(&dev->vid_timeout, jiffies + (HZ / 10));
		} else if (vq->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
			dev->vbi_timeout_running = 1;
			FUNC3(&dev->vbi_timeout, jiffies + (HZ / 10));
		}
	}
	dev->streaming_users++;
	return rc;
}