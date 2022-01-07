
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {scalar_t__ state; int conf_mutex; } ;


 scalar_t__ ATH10K_STATE_UTF ;
 int __ath10k_tm_cmd_utf_stop (struct ath10k*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath10k_testmode_destroy(struct ath10k *ar)
{
 mutex_lock(&ar->conf_mutex);

 if (ar->state != ATH10K_STATE_UTF) {

  goto out;
 }

 __ath10k_tm_cmd_utf_stop(ar);

out:
 mutex_unlock(&ar->conf_mutex);
}
