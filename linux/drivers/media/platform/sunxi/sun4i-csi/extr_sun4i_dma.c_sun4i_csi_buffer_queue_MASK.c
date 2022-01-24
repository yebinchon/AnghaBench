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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct sun4i_csi_buffer {int /*<<< orphan*/  list; } ;
struct sun4i_csi {int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun4i_csi* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sun4i_csi_buffer* FUNC4 (struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct sun4i_csi *csi = FUNC3(vb->vb2_queue);
	struct sun4i_csi_buffer *buf = FUNC4(vb);
	unsigned long flags;

	FUNC1(&csi->qlock, flags);
	FUNC0(&buf->list, &csi->buf_list);
	FUNC2(&csi->qlock, flags);
}