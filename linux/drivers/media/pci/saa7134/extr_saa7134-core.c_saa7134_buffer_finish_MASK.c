#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct saa7134_dmaqueue {TYPE_3__* curr; int /*<<< orphan*/  seq_nr; } ;
struct saa7134_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {TYPE_2__ vb2_buf; scalar_t__ sequence; } ;
struct TYPE_6__ {TYPE_1__ vb2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 

void FUNC3(struct saa7134_dev *dev,
			   struct saa7134_dmaqueue *q,
			   unsigned int state)
{
	FUNC0("buffer_finish %p\n", q->curr);

	/* finish current buffer */
	q->curr->vb2.vb2_buf.timestamp = FUNC1();
	q->curr->vb2.sequence = q->seq_nr++;
	FUNC2(&q->curr->vb2.vb2_buf, state);
	q->curr = NULL;
}