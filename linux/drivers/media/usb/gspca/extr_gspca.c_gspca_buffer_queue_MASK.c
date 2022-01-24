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
struct gspca_dev {int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; } ;
struct gspca_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct gspca_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct gspca_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct gspca_dev *gspca_dev = FUNC4(vb->vb2_queue);
	struct gspca_buffer *buf = FUNC3(vb);
	unsigned long flags;

	FUNC1(&gspca_dev->qlock, flags);
	FUNC0(&buf->list, &gspca_dev->buf_list);
	FUNC2(&gspca_dev->qlock, flags);
}