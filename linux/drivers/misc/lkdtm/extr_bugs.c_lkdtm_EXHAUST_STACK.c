
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REC_STACK_SIZE ;
 int pr_info (char*,...) ;
 int recur_count ;
 int recursive_loop (int ) ;

void lkdtm_EXHAUST_STACK(void)
{
 pr_info("Calling function with %lu frame size to depth %d ...\n",
  REC_STACK_SIZE, recur_count);
 recursive_loop(recur_count);
 pr_info("FAIL: survived without exhausting stack?!\n");
}
