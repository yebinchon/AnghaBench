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
struct vpfe_fh {struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int /*<<< orphan*/  dma_queue_lock; int /*<<< orphan*/  dma_queue; int /*<<< orphan*/  v4l2_dev; } ;
struct videobuf_queue {struct vpfe_fh* priv_data; } ;
struct videobuf_buffer {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*,struct videobuf_buffer*) ; 

__attribute__((used)) static void FUNC5(struct videobuf_queue *vq,
				  struct videobuf_buffer *vb)
{
	struct vpfe_fh *fh = vq->priv_data;
	struct vpfe_device *vpfe_dev = fh->vpfe_dev;
	unsigned long flags;

	FUNC3(1, debug, &vpfe_dev->v4l2_dev, "vpfe_videobuf_release\n");

	/*
	 * We need to flush the buffer from the dma queue since
	 * they are de-allocated
	 */
	FUNC1(&vpfe_dev->dma_queue_lock, flags);
	FUNC0(&vpfe_dev->dma_queue);
	FUNC2(&vpfe_dev->dma_queue_lock, flags);
	FUNC4(vq, vb);
	vb->state = VIDEOBUF_NEEDS_INIT;
}