
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {scalar_t__ ch_hint; int wep_key_list; scalar_t__ def_txkey_index; } ;


 int ath6kl_init_profile_info (struct ath6kl_vif*) ;
 int memset (int ,int ,int) ;

void ath6kl_init_control_info(struct ath6kl_vif *vif)
{
 ath6kl_init_profile_info(vif);
 vif->def_txkey_index = 0;
 memset(vif->wep_key_list, 0, sizeof(vif->wep_key_list));
 vif->ch_hint = 0;
}
