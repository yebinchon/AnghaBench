
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_qp {int hw_rqueue1; } ;


 int hw_qeit_inc (int *) ;

__attribute__((used)) static inline void ehea_inc_rq1(struct ehea_qp *qp)
{
 hw_qeit_inc(&qp->hw_rqueue1);
}
