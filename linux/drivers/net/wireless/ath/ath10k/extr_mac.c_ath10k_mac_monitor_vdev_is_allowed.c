
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dev_flags; } ;


 int ATH10K_CAC_RUNNING ;
 int ath10k_mac_num_chanctxs (struct ath10k*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ath10k_mac_monitor_vdev_is_allowed(struct ath10k *ar)
{
 int num_ctx;

 num_ctx = ath10k_mac_num_chanctxs(ar);





 if (test_bit(ATH10K_CAC_RUNNING, &ar->dev_flags) && num_ctx > 1)
  return 0;

 return 1;
}
