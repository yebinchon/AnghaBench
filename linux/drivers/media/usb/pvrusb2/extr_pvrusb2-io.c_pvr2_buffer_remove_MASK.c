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
struct pvr2_stream {unsigned int i_count; unsigned int i_bcount; unsigned int q_count; unsigned int q_bcount; unsigned int r_count; unsigned int r_bcount; } ;
struct pvr2_buffer {int state; unsigned int max_count; unsigned int used_count; int /*<<< orphan*/  list_overhead; struct pvr2_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_BUF_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  pvr2_buffer_state_idle 130 
 int pvr2_buffer_state_none ; 
#define  pvr2_buffer_state_queued 129 
#define  pvr2_buffer_state_ready 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct pvr2_buffer *bp)
{
	unsigned int *cnt;
	unsigned int *bcnt;
	unsigned int ccnt;
	struct pvr2_stream *sp = bp->stream;
	switch (bp->state) {
	case pvr2_buffer_state_idle:
		cnt = &sp->i_count;
		bcnt = &sp->i_bcount;
		ccnt = bp->max_count;
		break;
	case pvr2_buffer_state_queued:
		cnt = &sp->q_count;
		bcnt = &sp->q_bcount;
		ccnt = bp->max_count;
		break;
	case pvr2_buffer_state_ready:
		cnt = &sp->r_count;
		bcnt = &sp->r_bcount;
		ccnt = bp->used_count;
		break;
	default:
		return;
	}
	FUNC0(&bp->list_overhead);
	(*cnt)--;
	(*bcnt) -= ccnt;
	FUNC2(PVR2_TRACE_BUF_FLOW,
		   "/*---TRACE_FLOW---*/ bufferPool	%8s dec cap=%07d cnt=%02d",
		   FUNC1(bp->state), *bcnt, *cnt);
	bp->state = pvr2_buffer_state_none;
}