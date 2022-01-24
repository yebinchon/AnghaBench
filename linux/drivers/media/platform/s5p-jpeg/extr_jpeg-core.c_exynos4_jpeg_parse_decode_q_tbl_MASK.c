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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_4__ {scalar_t__ sof; int /*<<< orphan*/  sof_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_2__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {scalar_t__ curr; scalar_t__ data; int /*<<< orphan*/  size; } ;
struct s5p_jpeg {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct s5p_jpeg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_jpeg_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *vb = FUNC4(ctx->fh.m2m_ctx);
	struct s5p_jpeg_buffer jpeg_buffer;
	int c, x, components;

	jpeg_buffer.size = ctx->out_q.sof_len;
	jpeg_buffer.data =
		(unsigned long)FUNC5(&vb->vb2_buf, 0) + ctx->out_q.sof;
	jpeg_buffer.curr = 0;

	FUNC3(&jpeg_buffer, 5); /* P, Y, X */
	components = FUNC2(&jpeg_buffer);
	if (components == -1)
		return;

	FUNC1(jpeg->regs, components);

	while (components--) {
		c = FUNC2(&jpeg_buffer);
		if (c == -1)
			return;
		FUNC3(&jpeg_buffer, 1);
		x = FUNC2(&jpeg_buffer);
		if (x == -1)
			return;
		FUNC0(jpeg->regs, c, x);
	}
}