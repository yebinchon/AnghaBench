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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct delta_ctx {int aborting; scalar_t__ au_num; TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 struct delta_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC4(struct vb2_queue *q)
{
	struct delta_ctx *ctx = FUNC3(q);
	struct vb2_v4l2_buffer *vbuf;

	FUNC0(ctx);

	/* return all buffers to vb2 in ERROR state */
	while ((vbuf = FUNC2(ctx->fh.m2m_ctx)))
		FUNC1(vbuf, VB2_BUF_STATE_ERROR);

	ctx->au_num = 0;

	ctx->aborting = false;
}