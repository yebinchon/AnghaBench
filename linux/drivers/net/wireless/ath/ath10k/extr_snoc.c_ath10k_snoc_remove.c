
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ath10k_snoc {int flags; } ;
struct ath10k {int driver_recovery; } ;


 int ATH10K_DBG_SNOC ;
 int ATH10K_SNOC_FLAG_RECOVERY ;
 int ATH10K_SNOC_FLAG_UNREGISTERING ;
 int HZ ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_unregister (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_hw_power_off (struct ath10k*) ;
 int ath10k_qmi_deinit (struct ath10k*) ;
 int ath10k_snoc_free_irq (struct ath10k*) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_snoc_release_resource (struct ath10k*) ;
 struct ath10k* platform_get_drvdata (struct platform_device*) ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_snoc_remove(struct platform_device *pdev)
{
 struct ath10k *ar = platform_get_drvdata(pdev);
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);

 ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc remove\n");

 reinit_completion(&ar->driver_recovery);

 if (test_bit(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags))
  wait_for_completion_timeout(&ar->driver_recovery, 3 * HZ);

 set_bit(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags);

 ath10k_core_unregister(ar);
 ath10k_hw_power_off(ar);
 ath10k_snoc_free_irq(ar);
 ath10k_snoc_release_resource(ar);
 ath10k_qmi_deinit(ar);
 ath10k_core_destroy(ar);

 return 0;
}
