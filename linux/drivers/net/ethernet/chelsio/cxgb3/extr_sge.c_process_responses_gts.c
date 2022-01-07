
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int cidx; int next_holdoff; int cntxt_id; } ;
struct adapter {int dummy; } ;


 int A_SG_GTS ;
 int V_NEWINDEX (int ) ;
 int V_NEWTIMER (int ) ;
 int V_RSPQ (int ) ;
 int process_responses (struct adapter*,int ,int) ;
 int rspq_to_qset (struct sge_rspq*) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static inline int process_responses_gts(struct adapter *adap,
     struct sge_rspq *rq)
{
 int work;

 work = process_responses(adap, rspq_to_qset(rq), -1);
 t3_write_reg(adap, A_SG_GTS, V_RSPQ(rq->cntxt_id) |
       V_NEWTIMER(rq->next_holdoff) | V_NEWINDEX(rq->cidx));
 return work;
}
