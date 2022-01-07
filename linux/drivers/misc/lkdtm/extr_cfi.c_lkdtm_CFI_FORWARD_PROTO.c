
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int called_count ;
 scalar_t__ lkdtm_increment_int ;
 void lkdtm_increment_void (int*) ;
 int pr_info (char*) ;

void lkdtm_CFI_FORWARD_PROTO(void)
{




 void (*func)(int *);

 pr_info("Calling matched prototype ...\n");
 func = lkdtm_increment_void;
 func(&called_count);

 pr_info("Calling mismatched prototype ...\n");
 func = (void *)lkdtm_increment_int;
 func(&called_count);

 pr_info("Fail: survived mismatched prototype function call!\n");
}
