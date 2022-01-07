
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int cntxt_id; int intr_params; int adapter; int napi; } ;


 int CIDXINC_V (int ) ;
 int INGRESSQID_V (int ) ;
 int SEINTARM_V (int ) ;
 scalar_t__ SGE_VF_GTS ;
 scalar_t__ T4VF_SGE_BASE_ADDR ;
 int napi_enable (int *) ;
 int t4_write_reg (int ,scalar_t__,int) ;

__attribute__((used)) static void qenable(struct sge_rspq *rspq)
{
 napi_enable(&rspq->napi);





 t4_write_reg(rspq->adapter, T4VF_SGE_BASE_ADDR + SGE_VF_GTS,
       CIDXINC_V(0) |
       SEINTARM_V(rspq->intr_params) |
       INGRESSQID_V(rspq->cntxt_id));
}
