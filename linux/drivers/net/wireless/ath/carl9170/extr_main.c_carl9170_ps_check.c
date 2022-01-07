
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int ps_work; int hw; } ;


 int ieee80211_queue_work (int ,int *) ;

void carl9170_ps_check(struct ar9170 *ar)
{
 ieee80211_queue_work(ar->hw, &ar->ps_work);
}
