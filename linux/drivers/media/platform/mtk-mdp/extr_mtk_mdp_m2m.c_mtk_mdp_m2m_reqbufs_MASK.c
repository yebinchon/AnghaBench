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
struct v4l2_requestbuffers {scalar_t__ count; scalar_t__ type; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  m2m_ctx; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_MDP_DST_FMT ; 
 int /*<<< orphan*/  MTK_MDP_SRC_FMT ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct mtk_mdp_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_mdp_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
			       struct v4l2_requestbuffers *reqbufs)
{
	struct mtk_mdp_ctx *ctx = FUNC0(fh);

	if (reqbufs->count == 0) {
		if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
			FUNC1(ctx, MTK_MDP_SRC_FMT);
		else
			FUNC1(ctx, MTK_MDP_DST_FMT);
	}

	return FUNC2(file, ctx->m2m_ctx, reqbufs);
}