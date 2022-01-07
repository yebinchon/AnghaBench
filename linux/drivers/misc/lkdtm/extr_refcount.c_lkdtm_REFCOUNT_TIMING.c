
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int INT_MAX ;
 int REFCOUNT_INIT (int) ;
 int pr_err (char*,unsigned int) ;
 int pr_info (char*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_inc (int *) ;

void lkdtm_REFCOUNT_TIMING(void)
{
 unsigned int i;
 refcount_t count = REFCOUNT_INIT(1);

 for (i = 0; i < INT_MAX - 1; i++)
  refcount_inc(&count);

 for (i = INT_MAX; i > 0; i--)
  if (refcount_dec_and_test(&count))
   break;

 if (i != 1)
  pr_err("refcount: out of sync up/down cycle: %u\n", i - 1);
 else
  pr_info("refcount timing: done\n");
}
