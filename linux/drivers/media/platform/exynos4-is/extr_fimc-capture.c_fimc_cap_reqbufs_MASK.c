#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_requestbuffers {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  reqbufs_count; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,void*,struct v4l2_requestbuffers*) ; 
 struct fimc_dev* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			    struct v4l2_requestbuffers *reqbufs)
{
	struct fimc_dev *fimc = FUNC1(file);
	int ret;

	ret = FUNC0(file, priv, reqbufs);

	if (!ret)
		fimc->vid_cap.reqbufs_count = reqbufs->count;

	return ret;
}