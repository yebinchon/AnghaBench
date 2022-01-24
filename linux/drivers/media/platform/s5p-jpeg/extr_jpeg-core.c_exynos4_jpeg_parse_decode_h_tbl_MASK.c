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
struct TYPE_4__ {scalar_t__ sos; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_2__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {int size; scalar_t__ curr; scalar_t__ data; } ;
struct s5p_jpeg {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct s5p_jpeg_buffer*) ; 
 scalar_t__ FUNC2 (struct s5p_jpeg_buffer*,unsigned int*) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *vb = FUNC3(ctx->fh.m2m_ctx);
	struct s5p_jpeg_buffer jpeg_buffer;
	unsigned int word;
	int c, x, components;

	jpeg_buffer.size = 2; /* Ls */
	jpeg_buffer.data =
		(unsigned long)FUNC4(&vb->vb2_buf, 0) + ctx->out_q.sos + 2;
	jpeg_buffer.curr = 0;

	word = 0;

	if (FUNC2(&jpeg_buffer, &word))
		return;
	jpeg_buffer.size = (long)word - 2;
	jpeg_buffer.data += 2;
	jpeg_buffer.curr = 0;

	components = FUNC1(&jpeg_buffer);
	if (components == -1)
		return;
	while (components--) {
		c = FUNC1(&jpeg_buffer);
		if (c == -1)
			return;
		x = FUNC1(&jpeg_buffer);
		if (x == -1)
			return;
		FUNC0(jpeg->regs, c,
					(((x >> 4) & 0x1) << 1) | (x & 0x1));
	}

}