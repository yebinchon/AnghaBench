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
struct videobuf_buffer {int /*<<< orphan*/  state; } ;
struct viu_buf {struct videobuf_buffer vb; } ;
struct videobuf_queue {TYPE_1__* int_ops; } ;
struct TYPE_2__ {void* (* vaddr ) (struct videobuf_buffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*,struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*,struct videobuf_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct videobuf_queue *vq, struct viu_buf *buf)
{
	struct videobuf_buffer *vb = &buf->vb;
	void *vaddr = NULL;

	FUNC0(FUNC1());

	FUNC4(vq, &buf->vb, 0, 0);

	if (vq->int_ops && vq->int_ops->vaddr)
		vaddr = vq->int_ops->vaddr(vb);

	if (vaddr)
		FUNC3(vq, &buf->vb);

	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}