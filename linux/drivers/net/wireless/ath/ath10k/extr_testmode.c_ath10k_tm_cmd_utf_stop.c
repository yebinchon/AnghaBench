
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ath10k {scalar_t__ state; int conf_mutex; } ;


 int ATH10K_DBG_TESTMODE ;
 scalar_t__ ATH10K_STATE_UTF ;
 int ENETDOWN ;
 int __ath10k_tm_cmd_utf_stop (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_info (struct ath10k*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_tm_cmd_utf_stop(struct ath10k *ar, struct nlattr *tb[])
{
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_TESTMODE, "testmode cmd utf stop\n");

 mutex_lock(&ar->conf_mutex);

 if (ar->state != ATH10K_STATE_UTF) {
  ret = -ENETDOWN;
  goto out;
 }

 __ath10k_tm_cmd_utf_stop(ar);

 ret = 0;

 ath10k_info(ar, "UTF firmware stopped\n");

out:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
