
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct res_qp {TYPE_1__ com; int ref_count; int mcg_list; } ;


 int EBUSY ;
 int EPERM ;
 scalar_t__ RES_QP_BUSY ;
 scalar_t__ RES_QP_RESERVED ;
 scalar_t__ atomic_read (int *) ;
 int list_empty (int *) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int remove_qp_ok(struct res_qp *res)
{
 if (res->com.state == RES_QP_BUSY || atomic_read(&res->ref_count) ||
     !list_empty(&res->mcg_list)) {
  pr_err("resource tracker: fail to remove qp, state %d, ref_count %d\n",
         res->com.state, atomic_read(&res->ref_count));
  return -EBUSY;
 } else if (res->com.state != RES_QP_RESERVED) {
  return -EPERM;
 }

 return 0;
}
