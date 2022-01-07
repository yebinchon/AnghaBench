
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dev_flags; int conf_mutex; } ;


 int ATH10K_CAC_RUNNING ;
 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_monitor_stop (struct ath10k*) ;
 int clear_bit (int ,int *) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath10k_stop_cac(struct ath10k *ar)
{
 lockdep_assert_held(&ar->conf_mutex);


 if (!test_bit(ATH10K_CAC_RUNNING, &ar->dev_flags))
  return 0;

 clear_bit(ATH10K_CAC_RUNNING, &ar->dev_flags);
 ath10k_monitor_stop(ar);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac cac finished\n");

 return 0;
}
