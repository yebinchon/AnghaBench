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
struct vip_buffer {int /*<<< orphan*/  list; int /*<<< orphan*/  dma; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 struct vip_buffer* FUNC2 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct vip_buffer *vip_buf = FUNC2(vbuf);

	vip_buf->dma = FUNC3(vb, 0);
	FUNC0(&vip_buf->list);
	return 0;
}