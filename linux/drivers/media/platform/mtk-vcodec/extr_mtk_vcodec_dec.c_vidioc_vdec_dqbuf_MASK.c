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
struct v4l2_buffer {int dummy; } ;
struct mtk_vcodec_ctx {scalar_t__ state; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MTK_STATE_ABORT ; 
 struct mtk_vcodec_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			     struct v4l2_buffer *buf)
{
	struct mtk_vcodec_ctx *ctx = FUNC0(priv);

	if (ctx->state == MTK_STATE_ABORT) {
		FUNC1("[%d] Call on DQBUF after unrecoverable error",
				ctx->id);
		return -EIO;
	}

	return FUNC2(file, ctx->m2m_ctx, buf);
}