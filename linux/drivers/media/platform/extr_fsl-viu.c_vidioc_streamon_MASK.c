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
struct viu_fh {scalar_t__ type; int /*<<< orphan*/  vb_vidq; struct viu_dev* dev; } ;
struct viu_dev {scalar_t__ ovenable; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct viu_dev*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, enum v4l2_buf_type i)
{
	struct viu_fh *fh = priv;
	struct viu_dev *dev = fh->dev;

	if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;
	if (fh->type != i)
		return -EINVAL;

	if (dev->ovenable)
		dev->ovenable = 0;

	FUNC1(fh->dev);

	return FUNC0(&fh->vb_vidq);
}