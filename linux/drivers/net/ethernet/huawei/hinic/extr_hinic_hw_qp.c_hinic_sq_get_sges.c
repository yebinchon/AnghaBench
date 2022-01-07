
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_sq_wqe {TYPE_1__* buf_descs; } ;
struct hinic_sge {int dummy; } ;
typedef int sges ;
struct TYPE_2__ {struct hinic_sge sge; } ;


 int HINIC_MAX_SQ_BUFDESCS ;
 int hinic_be32_to_cpu (struct hinic_sge*,int) ;

void hinic_sq_get_sges(struct hinic_sq_wqe *sq_wqe, struct hinic_sge *sges,
         int nr_sges)
{
 int i;

 for (i = 0; i < nr_sges && i < HINIC_MAX_SQ_BUFDESCS; i++) {
  sges[i] = sq_wqe->buf_descs[i].sge;
  hinic_be32_to_cpu(&sges[i], sizeof(sges[i]));
 }
}
