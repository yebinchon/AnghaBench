
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ulp {int ref_count; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void bnxt_ulp_put(struct bnxt_ulp *ulp)
{
 atomic_dec(&ulp->ref_count);
}
