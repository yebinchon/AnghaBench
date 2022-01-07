
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl {int wiphy; TYPE_1__* sta_list; } ;
struct TYPE_2__ {int aggr_conn; } ;


 int AP_MAX_NUM_STA ;
 int kfree (int ) ;
 int wiphy_free (int ) ;

void ath6kl_cfg80211_destroy(struct ath6kl *ar)
{
 int i;

 for (i = 0; i < AP_MAX_NUM_STA; i++)
  kfree(ar->sta_list[i].aggr_conn);

 wiphy_free(ar->wiphy);
}
