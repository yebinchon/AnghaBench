#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vnic_rq_buf {unsigned int index; struct vnic_rq_buf* next; int /*<<< orphan*/ * desc; } ;
struct TYPE_2__ {unsigned int desc_count; int desc_size; scalar_t__ descs; } ;
struct vnic_rq {struct vnic_rq_buf** bufs; struct vnic_rq_buf* to_clean; struct vnic_rq_buf* to_use; TYPE_1__ ring; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct vnic_rq_buf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vnic_rq *rq)
{
	struct vnic_rq_buf *buf;
	unsigned int i, j, count = rq->ring.desc_count;
	unsigned int blks = FUNC0(count);

	for (i = 0; i < blks; i++) {
		rq->bufs[i] = FUNC3(FUNC2(count), GFP_KERNEL);
		if (!rq->bufs[i])
			return -ENOMEM;
	}

	for (i = 0; i < blks; i++) {
		buf = rq->bufs[i];
		for (j = 0; j < FUNC1(count); j++) {
			buf->index = i * FUNC1(count) + j;
			buf->desc = (u8 *)rq->ring.descs +
				rq->ring.desc_size * buf->index;
			if (buf->index + 1 == count) {
				buf->next = rq->bufs[0];
				break;
			} else if (j + 1 == FUNC1(count)) {
				buf->next = rq->bufs[i + 1];
			} else {
				buf->next = buf + 1;
				buf++;
			}
		}
	}

	rq->to_use = rq->to_clean = rq->bufs[0];

	return 0;
}