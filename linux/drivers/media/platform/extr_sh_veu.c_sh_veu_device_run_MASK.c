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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct sh_veu_dev {int /*<<< orphan*/  m2m_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_veu_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *priv)
{
	struct sh_veu_dev *veu = priv;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;

	src_buf = FUNC2(veu->m2m_ctx);
	dst_buf = FUNC1(veu->m2m_ctx);

	if (src_buf && dst_buf)
		FUNC0(veu, &src_buf->vb2_buf, &dst_buf->vb2_buf);
}