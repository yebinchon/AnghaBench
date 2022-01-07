
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int ) ;
 int check_negative (int *,int ) ;
 int pr_info (char*) ;
 int refcount_dec (int *) ;

void lkdtm_REFCOUNT_DEC_NEGATIVE(void)
{
 refcount_t neg = REFCOUNT_INIT(0);

 pr_info("attempting bad refcount_dec() below zero\n");
 refcount_dec(&neg);

 check_negative(&neg, 0);
}
