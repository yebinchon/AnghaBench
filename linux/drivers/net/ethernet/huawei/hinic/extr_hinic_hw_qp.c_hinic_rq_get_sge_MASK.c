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
typedef  void* u32 ;
typedef  size_t u16 ;
struct hinic_sge {int /*<<< orphan*/  len; void* lo_addr; void* hi_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  lo_addr; int /*<<< orphan*/  hi_addr; } ;
struct hinic_rq_wqe {TYPE_1__ buf_desc; } ;
struct hinic_rq_cqe {int /*<<< orphan*/  len; } ;
struct hinic_rq {struct hinic_rq_cqe** cqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEN ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct hinic_rq *rq, struct hinic_rq_wqe *rq_wqe,
		      u16 cons_idx, struct hinic_sge *sge)
{
	struct hinic_rq_cqe *cqe = rq->cqe[cons_idx];
	u32 len = FUNC1(cqe->len);

	sge->hi_addr = FUNC1(rq_wqe->buf_desc.hi_addr);
	sge->lo_addr = FUNC1(rq_wqe->buf_desc.lo_addr);
	sge->len = FUNC0(len, LEN);
}