
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int ) ;
 int check_from_zero (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int refcount_inc (int *) ;
 int refcount_inc_not_zero (int *) ;
 scalar_t__ refcount_read (int *) ;

void lkdtm_REFCOUNT_INC_ZERO(void)
{
 refcount_t zero = REFCOUNT_INIT(0);

 pr_info("attempting safe refcount_inc_not_zero() from zero\n");
 if (!refcount_inc_not_zero(&zero)) {
  pr_info("Good: zero detected\n");
  if (refcount_read(&zero) == 0)
   pr_info("Correctly stayed at zero\n");
  else
   pr_err("Fail: refcount went past zero!\n");
 } else {
  pr_err("Fail: Zero not detected!?\n");
 }

 pr_info("attempting bad refcount_inc() from zero\n");
 refcount_inc(&zero);

 check_from_zero(&zero);
}
