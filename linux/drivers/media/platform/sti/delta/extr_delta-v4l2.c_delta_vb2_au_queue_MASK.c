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
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct delta_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vb2_v4l2_buffer*) ; 
 struct delta_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	struct delta_ctx *ctx = FUNC2(q);
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);

	FUNC1(ctx->fh.m2m_ctx, vbuf);
}