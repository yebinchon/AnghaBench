
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int ) ;
 int REFCOUNT_SATURATED ;
 int check_saturated (int *) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int refcount_inc_not_zero (int *) ;

void lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED(void)
{
 refcount_t sat = REFCOUNT_INIT(REFCOUNT_SATURATED);

 pr_info("attempting bad refcount_inc_not_zero() from saturated\n");
 if (!refcount_inc_not_zero(&sat))
  pr_warn("Weird: refcount_inc_not_zero() reported zero\n");

 check_saturated(&sat);
}
