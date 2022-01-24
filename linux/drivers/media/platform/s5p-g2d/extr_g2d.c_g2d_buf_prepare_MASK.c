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
struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct g2d_frame {int /*<<< orphan*/  size; } ;
struct g2d_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct g2d_frame*) ; 
 int FUNC1 (struct g2d_frame*) ; 
 struct g2d_frame* FUNC2 (struct g2d_ctx*,int /*<<< orphan*/ ) ; 
 struct g2d_ctx* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct g2d_ctx *ctx = FUNC3(vb->vb2_queue);
	struct g2d_frame *f = FUNC2(ctx, vb->vb2_queue->type);

	if (FUNC0(f))
		return FUNC1(f);
	FUNC4(vb, 0, f->size);
	return 0;
}