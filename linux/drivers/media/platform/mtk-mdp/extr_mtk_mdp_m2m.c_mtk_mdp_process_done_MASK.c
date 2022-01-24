#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; int /*<<< orphan*/  timecode; TYPE_1__ vb2_buf; } ;
struct mtk_mdp_dev {int /*<<< orphan*/  m2m_dev; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  m2m_ctx; TYPE_2__* mdp_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_dev; } ;

/* Variables and functions */
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk_mdp_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *priv, int vb_state)
{
	struct mtk_mdp_dev *mdp = priv;
	struct mtk_mdp_ctx *ctx;
	struct vb2_v4l2_buffer *src_vbuf, *dst_vbuf;

	ctx = FUNC2(mdp->m2m_dev);
	if (!ctx)
		return;

	src_vbuf = FUNC4(ctx->m2m_ctx);
	dst_vbuf = FUNC1(ctx->m2m_ctx);

	dst_vbuf->vb2_buf.timestamp = src_vbuf->vb2_buf.timestamp;
	dst_vbuf->timecode = src_vbuf->timecode;
	dst_vbuf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst_vbuf->flags |= src_vbuf->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

	FUNC0(src_vbuf, vb_state);
	FUNC0(dst_vbuf, vb_state);
	FUNC3(ctx->mdp_dev->m2m_dev, ctx->m2m_ctx);
}