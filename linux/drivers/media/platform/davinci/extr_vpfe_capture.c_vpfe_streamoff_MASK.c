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
struct vpfe_subdev_info {int /*<<< orphan*/  grp_id; } ;
struct vpfe_fh {int /*<<< orphan*/  io_allowed; } ;
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  v4l2_dev; struct vpfe_subdev_info* current_subdev; int /*<<< orphan*/  started; } ;
struct file {struct vpfe_fh* private_data; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOIOCTLCMD ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  video ; 
 struct vpfe_device* FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC9(struct file *file, void *priv,
			  enum v4l2_buf_type buf_type)
{
	struct vpfe_device *vpfe_dev = FUNC5(file);
	struct vpfe_fh *fh = file->private_data;
	struct vpfe_subdev_info *sdinfo;
	int ret;

	FUNC2(1, debug, &vpfe_dev->v4l2_dev, "vpfe_streamoff\n");

	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf_type) {
		FUNC4(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
		return -EINVAL;
	}

	/* If io is allowed for this file handle, return error */
	if (!fh->io_allowed) {
		FUNC4(&vpfe_dev->v4l2_dev, "fh->io_allowed\n");
		return -EACCES;
	}

	/* If streaming is not started, return error */
	if (!vpfe_dev->started) {
		FUNC4(&vpfe_dev->v4l2_dev, "device started\n");
		return -EINVAL;
	}

	ret = FUNC0(&vpfe_dev->lock);
	if (ret)
		return ret;

	FUNC8(vpfe_dev);
	FUNC7(vpfe_dev);

	sdinfo = vpfe_dev->current_subdev;
	ret = FUNC3(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
					video, s_stream, 0);

	if (ret && (ret != -ENOIOCTLCMD))
		FUNC4(&vpfe_dev->v4l2_dev, "stream off failed in subdev\n");
	ret = FUNC6(&vpfe_dev->buffer_queue);
	FUNC1(&vpfe_dev->lock);
	return ret;
}