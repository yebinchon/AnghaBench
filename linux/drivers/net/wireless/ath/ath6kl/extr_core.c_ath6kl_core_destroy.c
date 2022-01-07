
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int dummy; } ;


 int ath6kl_cfg80211_destroy (struct ath6kl*) ;

void ath6kl_core_destroy(struct ath6kl *ar)
{
 ath6kl_cfg80211_destroy(ar);
}
