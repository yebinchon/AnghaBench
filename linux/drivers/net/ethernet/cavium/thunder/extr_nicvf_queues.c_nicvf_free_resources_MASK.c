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
struct queue_set {int rbdr_cnt; int cq_cnt; int sq_cnt; int /*<<< orphan*/ * sq; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * rbdr; } ;
struct nicvf {struct queue_set* qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nicvf *nic)
{
	int qidx;
	struct queue_set *qs = nic->qs;

	/* Free receive buffer descriptor ring */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
		FUNC1(nic, &qs->rbdr[qidx]);

	/* Free completion queue */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++)
		FUNC0(nic, &qs->cq[qidx]);

	/* Free send queue */
	for (qidx = 0; qidx < qs->sq_cnt; qidx++)
		FUNC2(nic, &qs->sq[qidx]);
}