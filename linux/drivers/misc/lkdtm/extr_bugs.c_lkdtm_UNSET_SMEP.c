
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOV_CR4_DEPTH ;
 unsigned long X86_CR4_SMEP ;
 unsigned long native_read_cr4 () ;
 int native_write_cr4 (unsigned long) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

void lkdtm_UNSET_SMEP(void)
{
 pr_err("FAIL: this test is x86_64-only\n");

}
