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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  done_entry; int /*<<< orphan*/  vb2_queue; } ;
struct dt3155_priv {int /*<<< orphan*/  lock; struct vb2_v4l2_buffer* curr_buf; int /*<<< orphan*/  dmaq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct dt3155_priv* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct dt3155_priv *pd = FUNC4(vb->vb2_queue);

	/*  pd->vidq.streaming = 1 when dt3155_buf_queue() is invoked  */
	FUNC1(&pd->lock);
	if (pd->curr_buf)
		FUNC0(&vb->done_entry, &pd->dmaq);
	else
		pd->curr_buf = vbuf;
	FUNC2(&pd->lock);
}