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
struct v4l2_requestbuffers {scalar_t__ memory; scalar_t__ type; } ;
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 struct s5p_mfc_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,struct v4l2_requestbuffers*) ; 
 int FUNC4 (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,struct v4l2_requestbuffers*) ; 
 struct s5p_mfc_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
					  struct v4l2_requestbuffers *reqbufs)
{
	struct s5p_mfc_dev *dev = FUNC5(file);
	struct s5p_mfc_ctx *ctx = FUNC0(priv);

	if (reqbufs->memory != V4L2_MEMORY_MMAP) {
		FUNC1(2, "Only V4L2_MEMORY_MMAP is supported\n");
		return -EINVAL;
	}

	if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		return FUNC4(dev, ctx, reqbufs);
	} else if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		return FUNC3(dev, ctx, reqbufs);
	} else {
		FUNC2("Invalid type requested\n");
		return -EINVAL;
	}
}