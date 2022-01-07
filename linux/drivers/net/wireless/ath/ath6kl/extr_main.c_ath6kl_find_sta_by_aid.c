
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath6kl_sta {size_t aid; } ;
struct ath6kl {struct ath6kl_sta* sta_list; } ;


 size_t AP_MAX_NUM_STA ;

struct ath6kl_sta *ath6kl_find_sta_by_aid(struct ath6kl *ar, u8 aid)
{
 struct ath6kl_sta *conn = ((void*)0);
 u8 ctr;

 for (ctr = 0; ctr < AP_MAX_NUM_STA; ctr++) {
  if (ar->sta_list[ctr].aid == aid) {
   conn = &ar->sta_list[ctr];
   break;
  }
 }
 return conn;
}
