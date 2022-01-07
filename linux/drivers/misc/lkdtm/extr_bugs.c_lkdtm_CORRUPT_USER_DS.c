
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KERNEL_DS ;
 int SIGKILL ;
 int force_sig (int ) ;
 int pr_info (char*) ;
 int set_fs (int ) ;

void lkdtm_CORRUPT_USER_DS(void)
{
 pr_info("setting bad task size limit\n");
 set_fs(KERNEL_DS);


 force_sig(SIGKILL);
}
