#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cio2_queue {TYPE_2__** bufs; int /*<<< orphan*/  bufs_queued; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_4__ {TYPE_1__ vbb; } ;

/* Variables and functions */
 unsigned int CIO2_MAX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct cio2_queue *q,
					enum vb2_buffer_state state)
{
	unsigned int i;

	for (i = 0; i < CIO2_MAX_BUFFERS; i++) {
		if (q->bufs[i]) {
			FUNC0(&q->bufs_queued);
			FUNC1(&q->bufs[i]->vbb.vb2_buf,
					state);
		}
	}
}