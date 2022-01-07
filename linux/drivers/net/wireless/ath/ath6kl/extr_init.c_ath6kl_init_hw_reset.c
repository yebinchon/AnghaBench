
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int dummy; } ;


 int ATH6KL_DBG_BOOT ;
 int RESET_CONTROL_ADDRESS ;
 int RESET_CONTROL_COLD_RST ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_diag_write32 (struct ath6kl*,int ,int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static int ath6kl_init_hw_reset(struct ath6kl *ar)
{
 ath6kl_dbg(ATH6KL_DBG_BOOT, "cold resetting the device");

 return ath6kl_diag_write32(ar, RESET_CONTROL_ADDRESS,
       cpu_to_le32(RESET_CONTROL_COLD_RST));
}
