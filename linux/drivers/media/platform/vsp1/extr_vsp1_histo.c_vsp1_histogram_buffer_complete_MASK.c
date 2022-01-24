#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vsp1_pipeline {int /*<<< orphan*/  sequence; } ;
struct TYPE_7__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {TYPE_3__ vb2_buf; int /*<<< orphan*/  sequence; } ;
struct vsp1_histogram_buffer {TYPE_1__ buf; } ;
struct TYPE_6__ {struct vsp1_pipeline* pipe; } ;
struct vsp1_histogram {int readout; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  wait_queue; TYPE_2__ entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct vsp1_histogram *histo,
				    struct vsp1_histogram_buffer *buf,
				    size_t size)
{
	struct vsp1_pipeline *pipe = histo->entity.pipe;
	unsigned long flags;

	/*
	 * The pipeline pointer is guaranteed to be valid as this function is
	 * called from the frame completion interrupt handler, which can only
	 * occur when video streaming is active.
	 */
	buf->buf.sequence = pipe->sequence;
	buf->buf.vb2_buf.timestamp = FUNC0();
	FUNC4(&buf->buf.vb2_buf, 0, size);
	FUNC3(&buf->buf.vb2_buf, VB2_BUF_STATE_DONE);

	FUNC1(&histo->irqlock, flags);
	histo->readout = false;
	FUNC5(&histo->wait_queue);
	FUNC2(&histo->irqlock, flags);
}