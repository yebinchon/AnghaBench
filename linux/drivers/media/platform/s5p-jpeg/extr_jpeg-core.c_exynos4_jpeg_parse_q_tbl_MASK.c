#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_5__ {int n; int* len; scalar_t__* marker; } ;
struct TYPE_6__ {TYPE_2__ dqt; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_3__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {int size; int curr; scalar_t__ data; } ;
struct s5p_jpeg {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (struct s5p_jpeg_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *vb = FUNC2(ctx->fh.m2m_ctx);
	struct s5p_jpeg_buffer jpeg_buffer;
	unsigned int word;
	int c, i, j;

	for (j = 0; j < ctx->out_q.dqt.n; ++j) {
		jpeg_buffer.size = ctx->out_q.dqt.len[j];
		jpeg_buffer.data = (unsigned long)FUNC3(&vb->vb2_buf, 0) +
				   ctx->out_q.dqt.marker[j];
		jpeg_buffer.curr = 0;

		word = 0;
		while (jpeg_buffer.size - jpeg_buffer.curr >= 65) {
			char id;

			c = FUNC1(&jpeg_buffer);
			if (c == -1)
				return;
			id = c & 0xf;
			/* nonzero means extended mode - not supported */
			if ((c >> 4) & 0xf)
				return;
			for (i = 0; i < 64; ++i) {
				c = FUNC1(&jpeg_buffer);
				if (c == -1)
					return;
				word |= c << ((i % 4) * 8);
				if ((i + 1) % 4 == 0) {
					FUNC4(word, jpeg->regs +
					FUNC0(id) + (i / 4) * 4);
					word = 0;
				}
			}
			word = 0;
		}
	}
}