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
struct queue_set {int rbdr_cnt; int sq_cnt; int cq_cnt; int /*<<< orphan*/  cq_len; int /*<<< orphan*/ * cq; int /*<<< orphan*/  sq_len; int /*<<< orphan*/ * sq; int /*<<< orphan*/  rbdr_len; int /*<<< orphan*/ * rbdr; } ;
struct nicvf {struct queue_set* qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUFFER_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 scalar_t__ FUNC1 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct nicvf *nic)
{
	int qidx;
	struct queue_set *qs = nic->qs;

	/* Alloc receive buffer descriptor ring */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
		if (FUNC2(nic, &qs->rbdr[qidx], qs->rbdr_len,
				    DMA_BUFFER_LEN))
			goto alloc_fail;
	}

	/* Alloc send queue */
	for (qidx = 0; qidx < qs->sq_cnt; qidx++) {
		if (FUNC3(nic, &qs->sq[qidx], qs->sq_len, qidx))
			goto alloc_fail;
	}

	/* Alloc completion queue */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
		if (FUNC1(nic, &qs->cq[qidx], qs->cq_len))
			goto alloc_fail;
	}

	return 0;
alloc_fail:
	FUNC0(nic);
	return -ENOMEM;
}