
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hinic_sge {int lo_addr; int hi_addr; } ;
struct hinic_rq_ctrl {int ctrl_info; } ;
struct hinic_rq_bufdesc {int lo_addr; int hi_addr; } ;
struct hinic_rq_cqe_sect {int sge; } ;
struct hinic_rq_wqe {struct hinic_rq_ctrl ctrl; struct hinic_rq_bufdesc buf_desc; struct hinic_rq_cqe_sect cqe_sect; } ;
struct hinic_rq_cqe {int dummy; } ;
struct hinic_rq {int * cqe_dma; struct hinic_rq_cqe** cqe; } ;
typedef int dma_addr_t ;


 int BUFDESC_SECT_LEN ;
 int COMPLETE_FORMAT ;
 int COMPLETE_LEN ;
 int HINIC_RQ_CTRL_SET (int ,int ) ;
 int LEN ;
 int RQ_COMPLETE_SGE ;
 int SIZE_8BYTES (int) ;
 int hinic_set_sge (int *,int ,int) ;

void hinic_rq_prepare_wqe(struct hinic_rq *rq, u16 prod_idx,
     struct hinic_rq_wqe *rq_wqe, struct hinic_sge *sge)
{
 struct hinic_rq_cqe_sect *cqe_sect = &rq_wqe->cqe_sect;
 struct hinic_rq_bufdesc *buf_desc = &rq_wqe->buf_desc;
 struct hinic_rq_cqe *cqe = rq->cqe[prod_idx];
 struct hinic_rq_ctrl *ctrl = &rq_wqe->ctrl;
 dma_addr_t cqe_dma = rq->cqe_dma[prod_idx];

 ctrl->ctrl_info =
  HINIC_RQ_CTRL_SET(SIZE_8BYTES(sizeof(*ctrl)), LEN) |
  HINIC_RQ_CTRL_SET(SIZE_8BYTES(sizeof(*cqe_sect)),
      COMPLETE_LEN) |
  HINIC_RQ_CTRL_SET(SIZE_8BYTES(sizeof(*buf_desc)),
      BUFDESC_SECT_LEN) |
  HINIC_RQ_CTRL_SET(RQ_COMPLETE_SGE, COMPLETE_FORMAT);

 hinic_set_sge(&cqe_sect->sge, cqe_dma, sizeof(*cqe));

 buf_desc->hi_addr = sge->hi_addr;
 buf_desc->lo_addr = sge->lo_addr;
}
