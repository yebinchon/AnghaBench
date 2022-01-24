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
struct via_camera {int /*<<< orphan*/  buffer_queue; } ;
struct via_buffer {int /*<<< orphan*/  queue; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct via_camera* FUNC1 (int /*<<< orphan*/ ) ; 
 struct via_buffer* FUNC2 (struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct via_camera *cam = FUNC1(vb->vb2_queue);
	struct via_buffer *via = FUNC2(vb);

	FUNC0(&via->queue, &cam->buffer_queue);
}