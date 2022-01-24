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
struct pvr2_stream {scalar_t__ r_count; int /*<<< orphan*/  list_lock; struct pvr2_buffer* r_bcount; int /*<<< orphan*/  ready_list; } ;
struct pvr2_buffer {int /*<<< orphan*/  state; scalar_t__ used_count; int /*<<< orphan*/  list_overhead; struct pvr2_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  PVR2_TRACE_BUF_FLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_buffer*) ; 
 struct pvr2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvr2_buffer_state_ready ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct pvr2_buffer*,struct pvr2_buffer*,struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct pvr2_buffer *bp)
{
	int fl;
	unsigned long irq_flags;
	struct pvr2_stream *sp;
	FUNC0(bp);
	sp = bp->stream;
	FUNC4(PVR2_TRACE_BUF_FLOW,
		   "/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s",
		   bp,
		   FUNC3(bp->state),
		   FUNC3(pvr2_buffer_state_ready));
	FUNC5(&sp->list_lock, irq_flags);
	fl = (sp->r_count == 0);
	FUNC2(bp);
	FUNC1(&bp->list_overhead, &sp->ready_list);
	bp->state = pvr2_buffer_state_ready;
	(sp->r_count)++;
	sp->r_bcount += bp->used_count;
	FUNC4(PVR2_TRACE_BUF_FLOW,
		   "/*---TRACE_FLOW---*/ bufferPool	%8s inc cap=%07d cnt=%02d",
		   FUNC3(bp->state),
		   sp->r_bcount, sp->r_count);
	FUNC6(&sp->list_lock, irq_flags);
	return fl;
}