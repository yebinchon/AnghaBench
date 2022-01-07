
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,unsigned long*) ;
 int rodata ;

void lkdtm_WRITE_RO(void)
{

 unsigned long *ptr = (unsigned long *)&rodata;

 pr_info("attempting bad rodata write at %px\n", ptr);
 *ptr ^= 0xabcd1234;
}
