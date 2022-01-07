
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {int flags; } ;
struct ath10k {int dev_flags; } ;


 int ATH10K_FLAG_CRASH_FLUSH ;
 int ATH10K_SNOC_FLAG_RECOVERY ;
 int ath10k_qmi_wlan_disable (struct ath10k*) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath10k_snoc_wlan_disable(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);







 if (!test_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags) ||
     !test_bit(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags))
  ath10k_qmi_wlan_disable(ar);
}
