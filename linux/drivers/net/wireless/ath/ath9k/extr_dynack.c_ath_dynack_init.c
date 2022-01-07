
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_dynack {int ackto; int nodes; int qlock; } ;
struct ath_hw {TYPE_1__* hw; struct ath_dynack dynack; } ;
struct TYPE_4__ {int features; } ;
struct TYPE_3__ {TYPE_2__* wiphy; } ;


 int INIT_LIST_HEAD (int *) ;
 int NL80211_FEATURE_ACKTO_ESTIMATION ;
 int memset (struct ath_dynack*,int ,int) ;
 int spin_lock_init (int *) ;

void ath_dynack_init(struct ath_hw *ah)
{
 struct ath_dynack *da = &ah->dynack;

 memset(da, 0, sizeof(struct ath_dynack));

 spin_lock_init(&da->qlock);
 INIT_LIST_HEAD(&da->nodes);

 da->ackto = 9 + 16 + 64;

 ah->hw->wiphy->features |= NL80211_FEATURE_ACKTO_ESTIMATION;
}
