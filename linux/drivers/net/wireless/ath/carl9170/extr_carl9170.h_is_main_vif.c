
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ar9170 {int dummy; } ;


 struct ieee80211_vif* carl9170_get_main_vif (struct ar9170*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline bool is_main_vif(struct ar9170 *ar, struct ieee80211_vif *vif)
{
 bool ret;

 rcu_read_lock();
 ret = (carl9170_get_main_vif(ar) == vif);
 rcu_read_unlock();
 return ret;
}
