
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_swqe {int dummy; } ;
struct ehea_qp {int dummy; } ;


 int ehea_update_sqa (struct ehea_qp*,int) ;
 int iosync () ;

__attribute__((used)) static inline void ehea_post_swqe(struct ehea_qp *my_qp, struct ehea_swqe *swqe)
{
 iosync();
 ehea_update_sqa(my_qp, 1);
}
