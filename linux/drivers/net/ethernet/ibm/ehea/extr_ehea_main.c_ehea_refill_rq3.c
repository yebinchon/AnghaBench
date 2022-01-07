
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {int rq3_skba; } ;


 int EHEA_MAX_PACKET_SIZE ;
 int EHEA_RWQE3_TYPE ;
 int ehea_refill_rq_def (struct ehea_port_res*,int *,int,int,int ,int ) ;

__attribute__((used)) static int ehea_refill_rq3(struct ehea_port_res *pr, int nr_of_wqes)
{
 return ehea_refill_rq_def(pr, &pr->rq3_skba, 3,
      nr_of_wqes, EHEA_RWQE3_TYPE,
      EHEA_MAX_PACKET_SIZE);
}
