
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
 scalar_t__ refcount_dec_and_test (int *) ;

void lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED(void)
{
 refcount_t sat = REFCOUNT_INIT(REFCOUNT_SATURATED);

 pr_info("attempting bad refcount_dec_and_test() from saturated\n");
 if (refcount_dec_and_test(&sat))
  pr_warn("Weird: refcount_dec_and_test() reported zero\n");

 check_saturated(&sat);
}
