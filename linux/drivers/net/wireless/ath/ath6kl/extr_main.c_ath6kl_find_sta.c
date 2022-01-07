
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath6kl_vif {scalar_t__ nw_type; struct ath6kl* ar; } ;
struct ath6kl_sta {int mac; } ;
struct ath6kl {struct ath6kl_sta* sta_list; } ;


 size_t AP_MAX_NUM_STA ;
 scalar_t__ AP_NETWORK ;
 int ETH_ALEN ;
 scalar_t__ is_zero_ether_addr (size_t*) ;
 scalar_t__ memcmp (size_t*,int ,int ) ;

struct ath6kl_sta *ath6kl_find_sta(struct ath6kl_vif *vif, u8 *node_addr)
{
 struct ath6kl *ar = vif->ar;
 struct ath6kl_sta *conn = ((void*)0);
 u8 i, max_conn;

 if (is_zero_ether_addr(node_addr))
  return ((void*)0);

 max_conn = (vif->nw_type == AP_NETWORK) ? AP_MAX_NUM_STA : 0;

 for (i = 0; i < max_conn; i++) {
  if (memcmp(node_addr, ar->sta_list[i].mac, ETH_ALEN) == 0) {
   conn = &ar->sta_list[i];
   break;
  }
 }

 return conn;
}
