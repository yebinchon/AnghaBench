
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int ATOMIC_INIT (int) ;
 int INT_MAX ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int pr_err (char*,unsigned int) ;
 int pr_info (char*) ;

void lkdtm_ATOMIC_TIMING(void)
{
 unsigned int i;
 atomic_t count = ATOMIC_INIT(1);

 for (i = 0; i < INT_MAX - 1; i++)
  atomic_inc(&count);

 for (i = INT_MAX; i > 0; i--)
  if (atomic_dec_and_test(&count))
   break;

 if (i != 1)
  pr_err("atomic timing: out of sync up/down cycle: %u\n", i - 1);
 else
  pr_info("atomic timing: done\n");
}
