
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,unsigned long*) ;
 unsigned long ro_after_init ;

void lkdtm_WRITE_RO_AFTER_INIT(void)
{
 unsigned long *ptr = &ro_after_init;






 if ((*ptr & 0xAA) != 0xAA) {
  pr_info("%p was NOT written during init!?\n", ptr);
  return;
 }

 pr_info("attempting bad ro_after_init write at %px\n", ptr);
 *ptr ^= 0xabcd1234;
}
