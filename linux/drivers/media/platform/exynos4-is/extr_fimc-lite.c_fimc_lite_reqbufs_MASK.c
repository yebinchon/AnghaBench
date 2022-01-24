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
struct v4l2_requestbuffers {int /*<<< orphan*/  count; } ;
struct fimc_lite {int /*<<< orphan*/  reqbufs_count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLITE_REQ_BUFS_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int FUNC1 (struct file*,void*,struct v4l2_requestbuffers*) ; 
 struct fimc_lite* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			     struct v4l2_requestbuffers *reqbufs)
{
	struct fimc_lite *fimc = FUNC2(file);
	int ret;

	reqbufs->count = FUNC0(u32, FLITE_REQ_BUFS_MIN, reqbufs->count);
	ret = FUNC1(file, priv, reqbufs);
	if (!ret)
		fimc->reqbufs_count = reqbufs->count;

	return ret;
}