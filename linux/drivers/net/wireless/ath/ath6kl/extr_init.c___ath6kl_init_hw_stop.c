
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int htc_target; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_bmi_reset (struct ath6kl*) ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_hif_power_off (struct ath6kl*) ;
 int ath6kl_hif_stop (struct ath6kl*) ;
 int ath6kl_htc_stop (int ) ;
 int ath6kl_warn (char*,int) ;

__attribute__((used)) static int __ath6kl_init_hw_stop(struct ath6kl *ar)
{
 int ret;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "hw stop\n");

 ath6kl_htc_stop(ar->htc_target);

 ath6kl_hif_stop(ar);

 ath6kl_bmi_reset(ar);

 ret = ath6kl_hif_power_off(ar);
 if (ret)
  ath6kl_warn("failed to power off hif: %d\n", ret);

 return 0;
}
