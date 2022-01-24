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
struct vb2_queue {int dummy; } ;
struct gspca_dev {scalar_t__ sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 struct gspca_dev* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq, unsigned int count)
{
	struct gspca_dev *gspca_dev = FUNC2(vq);
	int ret;

	gspca_dev->sequence = 0;

	ret = FUNC0(gspca_dev);
	if (ret)
		FUNC1(gspca_dev, VB2_BUF_STATE_QUEUED);
	return ret;
}