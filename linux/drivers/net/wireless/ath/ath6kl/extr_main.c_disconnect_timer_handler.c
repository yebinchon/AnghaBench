
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int ath6kl_disconnect (struct ath6kl_vif*) ;
 int ath6kl_init_profile_info (struct ath6kl_vif*) ;
 int disconnect_timer ;
 struct ath6kl_vif* from_timer (int ,struct timer_list*,int ) ;
 struct ath6kl_vif* vif ;

void disconnect_timer_handler(struct timer_list *t)
{
 struct ath6kl_vif *vif = from_timer(vif, t, disconnect_timer);

 ath6kl_init_profile_info(vif);
 ath6kl_disconnect(vif);
}
