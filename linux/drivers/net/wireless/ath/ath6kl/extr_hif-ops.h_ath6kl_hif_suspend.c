
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_wowlan {int dummy; } ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* suspend ) (struct ath6kl*,struct cfg80211_wowlan*) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*) ;
 int stub1 (struct ath6kl*,struct cfg80211_wowlan*) ;

__attribute__((used)) static inline int ath6kl_hif_suspend(struct ath6kl *ar,
         struct cfg80211_wowlan *wow)
{
 ath6kl_dbg(ATH6KL_DBG_HIF, "hif suspend\n");

 return ar->hif_ops->suspend(ar, wow);
}
