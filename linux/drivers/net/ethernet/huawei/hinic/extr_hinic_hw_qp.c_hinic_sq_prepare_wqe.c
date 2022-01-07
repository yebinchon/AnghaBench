
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hinic_sq_wqe {TYPE_1__* buf_descs; int task; int ctrl; } ;
struct hinic_sq {int dummy; } ;
struct hinic_sge {int dummy; } ;
struct TYPE_2__ {struct hinic_sge sge; } ;


 int sq_prepare_ctrl (int *,int ,int) ;
 int sq_prepare_task (int *) ;

void hinic_sq_prepare_wqe(struct hinic_sq *sq, u16 prod_idx,
     struct hinic_sq_wqe *sq_wqe, struct hinic_sge *sges,
     int nr_sges)
{
 int i;

 sq_prepare_ctrl(&sq_wqe->ctrl, prod_idx, nr_sges);

 sq_prepare_task(&sq_wqe->task);

 for (i = 0; i < nr_sges; i++)
  sq_wqe->buf_descs[i].sge = sges[i];
}
