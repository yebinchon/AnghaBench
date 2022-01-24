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
struct venus_inst {int /*<<< orphan*/  m2m_ctx; } ;
struct vb2_v4l2_buffer {int dummy; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct venus_inst *inst,
			       enum vb2_buffer_state state)
{
	struct vb2_v4l2_buffer *buf;

	while ((buf = FUNC2(inst->m2m_ctx)))
		FUNC0(buf, state);
	while ((buf = FUNC1(inst->m2m_ctx)))
		FUNC0(buf, state);
}