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
struct omap_vout_device {int /*<<< orphan*/  dma_queue; } ;
struct omap_vout_buffer {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct omap_vout_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap_vout_buffer* FUNC2 (struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct omap_vout_device *vout = FUNC1(vb->vb2_queue);
	struct omap_vout_buffer *voutbuf = FUNC2(vb);

	FUNC0(&voutbuf->queue, &vout->dma_queue);
}