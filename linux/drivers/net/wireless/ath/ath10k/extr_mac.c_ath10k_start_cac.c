
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int monitor_vdev_id; int dev_flags; int conf_mutex; } ;


 int ATH10K_CAC_RUNNING ;
 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_monitor_recalc (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int clear_bit (int ,int *) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ath10k_start_cac(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 set_bit(ATH10K_CAC_RUNNING, &ar->dev_flags);

 ret = ath10k_monitor_recalc(ar);
 if (ret) {
  ath10k_warn(ar, "failed to start monitor (cac): %d\n", ret);
  clear_bit(ATH10K_CAC_RUNNING, &ar->dev_flags);
  return ret;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac cac start monitor vdev %d\n",
     ar->monitor_vdev_id);

 return 0;
}
