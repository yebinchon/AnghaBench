
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_cqe {int type; int status; scalar_t__ header_length; } ;


 int EHEA_CQE_STAT_ERR_MASK ;
 int EHEA_CQE_STAT_ERR_TCP ;
 int EHEA_CQE_TYPE_RQ ;
 int EINVAL ;

__attribute__((used)) static inline int ehea_check_cqe(struct ehea_cqe *cqe, int *rq_num)
{
 *rq_num = (cqe->type & EHEA_CQE_TYPE_RQ) >> 5;
 if ((cqe->status & EHEA_CQE_STAT_ERR_MASK) == 0)
  return 0;
 if (((cqe->status & EHEA_CQE_STAT_ERR_TCP) != 0) &&
     (cqe->header_length == 0))
  return 0;
 return -EINVAL;
}
