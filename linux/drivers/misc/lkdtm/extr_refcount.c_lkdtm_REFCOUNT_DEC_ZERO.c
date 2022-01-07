
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int) ;
 int check_zero (int *) ;
 int pr_info (char*) ;
 int refcount_dec (int *) ;

void lkdtm_REFCOUNT_DEC_ZERO(void)
{
 refcount_t zero = REFCOUNT_INIT(2);

 pr_info("attempting good refcount_dec()\n");
 refcount_dec(&zero);

 pr_info("attempting bad refcount_dec() to zero\n");
 refcount_dec(&zero);

 check_zero(&zero);
}
