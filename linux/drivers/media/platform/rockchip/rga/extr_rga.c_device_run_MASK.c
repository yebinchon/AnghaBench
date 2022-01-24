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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct rockchip_rga {int /*<<< orphan*/  ctrl_lock; struct rga_ctx* curr; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; struct rockchip_rga* rga; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_rga*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *prv)
{
	struct rga_ctx *ctx = prv;
	struct rockchip_rga *rga = ctx->rga;
	struct vb2_v4l2_buffer *src, *dst;
	unsigned long flags;

	FUNC2(&rga->ctrl_lock, flags);

	rga->curr = ctx;

	src = FUNC5(ctx->fh.m2m_ctx);
	dst = FUNC4(ctx->fh.m2m_ctx);

	FUNC0(&src->vb2_buf);
	FUNC0(&dst->vb2_buf);

	FUNC1(rga);

	FUNC3(&rga->ctrl_lock, flags);
}