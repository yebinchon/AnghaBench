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
typedef  size_t u16 ;
struct hinic_sge {int /*<<< orphan*/  lo_addr; int /*<<< orphan*/  hi_addr; } ;
struct hinic_rq_ctrl {int ctrl_info; } ;
struct hinic_rq_bufdesc {int /*<<< orphan*/  lo_addr; int /*<<< orphan*/  hi_addr; } ;
struct hinic_rq_cqe_sect {int /*<<< orphan*/  sge; } ;
struct hinic_rq_wqe {struct hinic_rq_ctrl ctrl; struct hinic_rq_bufdesc buf_desc; struct hinic_rq_cqe_sect cqe_sect; } ;
struct hinic_rq_cqe {int dummy; } ;
struct hinic_rq {int /*<<< orphan*/ * cqe_dma; struct hinic_rq_cqe** cqe; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFDESC_SECT_LEN ; 
 int /*<<< orphan*/  COMPLETE_FORMAT ; 
 int /*<<< orphan*/  COMPLETE_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEN ; 
 int /*<<< orphan*/  RQ_COMPLETE_SGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct hinic_rq *rq, u16 prod_idx,
			  struct hinic_rq_wqe *rq_wqe, struct hinic_sge *sge)
{
	struct hinic_rq_cqe_sect *cqe_sect = &rq_wqe->cqe_sect;
	struct hinic_rq_bufdesc *buf_desc = &rq_wqe->buf_desc;
	struct hinic_rq_cqe *cqe = rq->cqe[prod_idx];
	struct hinic_rq_ctrl *ctrl = &rq_wqe->ctrl;
	dma_addr_t cqe_dma = rq->cqe_dma[prod_idx];

	ctrl->ctrl_info =
		FUNC0(FUNC1(sizeof(*ctrl)), LEN) |
		FUNC0(FUNC1(sizeof(*cqe_sect)),
				  COMPLETE_LEN)                    |
		FUNC0(FUNC1(sizeof(*buf_desc)),
				  BUFDESC_SECT_LEN)                |
		FUNC0(RQ_COMPLETE_SGE, COMPLETE_FORMAT);

	FUNC2(&cqe_sect->sge, cqe_dma, sizeof(*cqe));

	buf_desc->hi_addr = sge->hi_addr;
	buf_desc->lo_addr = sge->lo_addr;
}