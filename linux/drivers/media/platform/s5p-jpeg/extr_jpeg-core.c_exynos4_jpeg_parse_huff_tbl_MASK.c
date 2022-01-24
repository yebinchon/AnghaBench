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
struct TYPE_5__ {int n; scalar_t__* len; scalar_t__* marker; } ;
struct TYPE_6__ {TYPE_2__ dht; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_3__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {scalar_t__ size; scalar_t__ curr; scalar_t__ data; } ;
struct s5p_jpeg {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char) ; 
 scalar_t__ FUNC1 (char,char) ; 
 int FUNC2 (struct s5p_jpeg_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *vb = FUNC3(ctx->fh.m2m_ctx);
	struct s5p_jpeg_buffer jpeg_buffer;
	unsigned int word;
	int c, i, n, j;

	for (j = 0; j < ctx->out_q.dht.n; ++j) {
		jpeg_buffer.size = ctx->out_q.dht.len[j];
		jpeg_buffer.data = (unsigned long)FUNC4(&vb->vb2_buf, 0) +
				   ctx->out_q.dht.marker[j];
		jpeg_buffer.curr = 0;

		word = 0;
		while (jpeg_buffer.curr < jpeg_buffer.size) {
			char id, class;

			c = FUNC2(&jpeg_buffer);
			if (c == -1)
				return;
			id = c & 0xf;
			class = (c >> 4) & 0xf;
			n = 0;
			for (i = 0; i < 16; ++i) {
				c = FUNC2(&jpeg_buffer);
				if (c == -1)
					return;
				word |= c << ((i % 4) * 8);
				if ((i + 1) % 4 == 0) {
					FUNC5(word, jpeg->regs +
					FUNC0(class, id) +
					(i / 4) * 4);
					word = 0;
				}
				n += c;
			}
			word = 0;
			for (i = 0; i < n; ++i) {
				c = FUNC2(&jpeg_buffer);
				if (c == -1)
					return;
				word |= c << ((i % 4) * 8);
				if ((i + 1) % 4 == 0) {
					FUNC5(word, jpeg->regs +
					FUNC1(class, id) +
					(i / 4) * 4);
					word = 0;
				}
			}
			if (i % 4) {
				FUNC5(word, jpeg->regs +
				FUNC1(class, id) + (i / 4) * 4);
			}
			word = 0;
		}
	}
}