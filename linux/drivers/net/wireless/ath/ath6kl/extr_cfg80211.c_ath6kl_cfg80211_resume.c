
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int state; } ;


 int ATH6KL_DBG_SUSPEND ;



 int ath6kl_cfg80211_deepsleep_resume (struct ath6kl*) ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_init_hw_start (struct ath6kl*) ;
 int ath6kl_warn (char*,int) ;
 int ath6kl_wow_resume (struct ath6kl*) ;

int ath6kl_cfg80211_resume(struct ath6kl *ar)
{
 int ret;

 switch (ar->state) {
 case 128:
  ath6kl_dbg(ATH6KL_DBG_SUSPEND, "wow mode resume\n");

  ret = ath6kl_wow_resume(ar);
  if (ret) {
   ath6kl_warn("wow mode resume failed: %d\n", ret);
   return ret;
  }

  break;

 case 129:
  ath6kl_dbg(ATH6KL_DBG_SUSPEND, "deep sleep resume\n");

  ret = ath6kl_cfg80211_deepsleep_resume(ar);
  if (ret) {
   ath6kl_warn("deep sleep resume failed: %d\n", ret);
   return ret;
  }
  break;

 case 130:
  ath6kl_dbg(ATH6KL_DBG_SUSPEND, "resume restoring power\n");

  ret = ath6kl_init_hw_start(ar);
  if (ret) {
   ath6kl_warn("Failed to boot hw in resume: %d\n", ret);
   return ret;
  }
  break;

 default:
  break;
 }

 return 0;
}
