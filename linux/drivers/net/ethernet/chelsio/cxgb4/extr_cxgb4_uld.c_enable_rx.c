
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int cntxt_id; int intr_params; int napi; scalar_t__ handler; } ;
struct adapter {int dummy; } ;


 int INGRESSQID_V (int ) ;
 int MYPF_REG (int ) ;
 int SEINTARM_V (int ) ;
 int SGE_PF_GTS_A ;
 int napi_enable (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void enable_rx(struct adapter *adap, struct sge_rspq *q)
{
 if (!q)
  return;

 if (q->handler)
  napi_enable(&q->napi);


 t4_write_reg(adap, MYPF_REG(SGE_PF_GTS_A),
       SEINTARM_V(q->intr_params) |
       INGRESSQID_V(q->cntxt_id));
}
