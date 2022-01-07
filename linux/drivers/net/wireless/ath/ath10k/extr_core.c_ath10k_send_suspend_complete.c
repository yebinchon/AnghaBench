
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int target_suspend; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int complete (int *) ;

__attribute__((used)) static void ath10k_send_suspend_complete(struct ath10k *ar)
{
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot suspend complete\n");

 complete(&ar->target_suspend);
}
