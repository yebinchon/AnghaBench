
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int ) ;
 int REFCOUNT_SATURATED ;
 int check_saturated (int *) ;
 int pr_info (char*) ;
 int refcount_dec (int *) ;

void lkdtm_REFCOUNT_DEC_SATURATED(void)
{
 refcount_t sat = REFCOUNT_INIT(REFCOUNT_SATURATED);

 pr_info("attempting bad refcount_dec() from saturated\n");
 refcount_dec(&sat);

 check_saturated(&sat);
}
