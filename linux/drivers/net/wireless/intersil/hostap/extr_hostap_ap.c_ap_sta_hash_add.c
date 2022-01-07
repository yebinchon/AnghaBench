
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int addr; struct sta_info* hnext; } ;
struct ap_data {struct sta_info** sta_hash; } ;


 size_t STA_HASH (int ) ;

__attribute__((used)) static void ap_sta_hash_add(struct ap_data *ap, struct sta_info *sta)
{
 sta->hnext = ap->sta_hash[STA_HASH(sta->addr)];
 ap->sta_hash[STA_HASH(sta->addr)] = sta;
}
