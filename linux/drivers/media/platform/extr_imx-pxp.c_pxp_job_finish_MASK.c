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
struct pxp_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  irqlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct pxp_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pxp_dev *dev)
{
	struct pxp_ctx *curr_ctx;
	struct vb2_v4l2_buffer *src_vb, *dst_vb;
	unsigned long flags;

	curr_ctx = FUNC6(dev->m2m_dev);

	if (curr_ctx == NULL) {
		FUNC1("Instance released before the end of transaction\n");
		return;
	}

	src_vb = FUNC8(curr_ctx->fh.m2m_ctx);
	dst_vb = FUNC5(curr_ctx->fh.m2m_ctx);

	FUNC2(&dev->irqlock, flags);
	FUNC4(src_vb, VB2_BUF_STATE_DONE);
	FUNC4(dst_vb, VB2_BUF_STATE_DONE);
	FUNC3(&dev->irqlock, flags);

	FUNC0(curr_ctx->dev, "Finishing transaction\n");
	FUNC7(dev->m2m_dev, curr_ctx->fh.m2m_ctx);
}