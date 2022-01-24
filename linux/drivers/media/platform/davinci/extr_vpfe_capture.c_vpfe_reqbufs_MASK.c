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
struct vpfe_fh {int io_allowed; } ;
struct TYPE_4__ {int /*<<< orphan*/  field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {int io_usrs; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  dma_queue; TYPE_3__ fmt; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  memory; int /*<<< orphan*/  v4l2_dev; } ;
struct videobuf_buffer {int dummy; } ;
struct v4l2_requestbuffers {int /*<<< orphan*/  type; int /*<<< orphan*/  memory; } ;
struct file {struct vpfe_fh* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  debug ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vpfe_fh*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 
 int /*<<< orphan*/  vpfe_videobuf_qops ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
			struct v4l2_requestbuffers *req_buf)
{
	struct vpfe_device *vpfe_dev = FUNC5(file);
	struct vpfe_fh *fh = file->private_data;
	int ret;

	FUNC3(1, debug, &vpfe_dev->v4l2_dev, "vpfe_reqbufs\n");

	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != req_buf->type) {
		FUNC4(&vpfe_dev->v4l2_dev, "Invalid buffer type\n");
		return -EINVAL;
	}

	ret = FUNC1(&vpfe_dev->lock);
	if (ret)
		return ret;

	if (vpfe_dev->io_usrs != 0) {
		FUNC4(&vpfe_dev->v4l2_dev, "Only one IO user allowed\n");
		ret = -EBUSY;
		goto unlock_out;
	}

	vpfe_dev->memory = req_buf->memory;
	FUNC6(&vpfe_dev->buffer_queue,
				&vpfe_videobuf_qops,
				vpfe_dev->pdev,
				&vpfe_dev->irqlock,
				req_buf->type,
				vpfe_dev->fmt.fmt.pix.field,
				sizeof(struct videobuf_buffer),
				fh, NULL);

	fh->io_allowed = 1;
	vpfe_dev->io_usrs = 1;
	FUNC0(&vpfe_dev->dma_queue);
	ret = FUNC7(&vpfe_dev->buffer_queue, req_buf);
unlock_out:
	FUNC2(&vpfe_dev->lock);
	return ret;
}