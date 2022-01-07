
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {int rq2_skba; } ;


 int EHEA_RQ2_PKT_SIZE ;
 int EHEA_RWQE2_TYPE ;
 int ehea_refill_rq_def (struct ehea_port_res*,int *,int,int,int ,int ) ;

__attribute__((used)) static int ehea_refill_rq2(struct ehea_port_res *pr, int nr_of_wqes)
{
 return ehea_refill_rq_def(pr, &pr->rq2_skba, 2,
      nr_of_wqes, EHEA_RWQE2_TYPE,
      EHEA_RQ2_PKT_SIZE);
}
