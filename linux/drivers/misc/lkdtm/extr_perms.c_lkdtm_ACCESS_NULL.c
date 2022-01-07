
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,unsigned long*) ;

void lkdtm_ACCESS_NULL(void)
{
 unsigned long tmp;
 unsigned long *ptr = (unsigned long *)((void*)0);

 pr_info("attempting bad read at %px\n", ptr);
 tmp = *ptr;
 tmp += 0xc0dec0de;

 pr_info("attempting bad write at %px\n", ptr);
 *ptr = tmp;
}
