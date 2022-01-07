
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_vif {int is_started; struct ath10k* ar; } ;
struct ath10k {int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool ath10k_mac_can_set_cts_prot(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->conf_mutex);

 if (!arvif->is_started) {
  ath10k_dbg(ar, ATH10K_DBG_MAC, "defer cts setup, vdev is not ready yet\n");
  return 0;
 }

 return 1;
}
