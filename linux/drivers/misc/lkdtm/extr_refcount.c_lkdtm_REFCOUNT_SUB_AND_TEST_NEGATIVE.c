
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int) ;
 int check_negative (int *,int) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 scalar_t__ refcount_sub_and_test (int,int *) ;

void lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE(void)
{
 refcount_t neg = REFCOUNT_INIT(3);

 pr_info("attempting bad refcount_sub_and_test() below zero\n");
 if (refcount_sub_and_test(5, &neg))
  pr_warn("Weird: refcount_sub_and_test() reported zero\n");

 check_negative(&neg, 3);
}
