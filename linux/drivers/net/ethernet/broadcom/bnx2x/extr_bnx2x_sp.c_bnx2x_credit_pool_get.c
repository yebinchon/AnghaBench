
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {int credit; } ;


 int __atomic_dec_ifmoe (int *,int,int ) ;
 int smp_mb () ;

__attribute__((used)) static bool bnx2x_credit_pool_get(struct bnx2x_credit_pool_obj *o, int cnt)
{
 bool rc;

 smp_mb();
 rc = __atomic_dec_ifmoe(&o->credit, cnt, 0);
 smp_mb();

 return rc;
}
