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
struct videobuf_queue {int dummy; } ;
struct viu_fh {scalar_t__ type; struct viu_dev* dev; struct videobuf_queue vb_vidq; } ;
struct viu_dev {int /*<<< orphan*/  lock; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct viu_fh* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct poll_table_struct*) ; 
 int FUNC3 (struct file*,struct poll_table_struct*) ; 
 int FUNC4 (struct file*,struct videobuf_queue*,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, struct poll_table_struct *wait)
{
	struct viu_fh *fh = file->private_data;
	struct videobuf_queue *q = &fh->vb_vidq;
	struct viu_dev *dev = fh->dev;
	__poll_t req_events = FUNC2(wait);
	__poll_t res = FUNC3(file, wait);

	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != fh->type)
		return EPOLLERR;

	if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
		return res;

	FUNC0(&dev->lock);
	res |= FUNC4(file, q, wait);
	FUNC1(&dev->lock);
	return res;
}