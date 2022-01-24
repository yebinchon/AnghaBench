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
struct vip_buffer {int /*<<< orphan*/  list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct sta2x11_vip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct vip_buffer* FUNC4 (struct vb2_v4l2_buffer*) ; 
 struct sta2x11_vip* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sta2x11_vip*) ; 

__attribute__((used)) static void FUNC8(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct sta2x11_vip *vip = FUNC5(vb->vb2_queue);
	struct vip_buffer *vip_buf = FUNC4(vbuf);

	/* Buffer handled, remove it from the list */
	FUNC1(&vip->lock);
	FUNC0(&vip_buf->list);
	FUNC2(&vip->lock);

	if (FUNC6(vb->vb2_queue))
		FUNC7(vip);
}