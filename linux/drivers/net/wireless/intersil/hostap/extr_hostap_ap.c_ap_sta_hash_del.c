
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int addr; struct sta_info* hnext; } ;
struct ap_data {struct sta_info** sta_hash; } ;


 size_t STA_HASH (int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void ap_sta_hash_del(struct ap_data *ap, struct sta_info *sta)
{
 struct sta_info *s;

 s = ap->sta_hash[STA_HASH(sta->addr)];
 if (s == ((void*)0)) return;
 if (ether_addr_equal(s->addr, sta->addr)) {
  ap->sta_hash[STA_HASH(sta->addr)] = s->hnext;
  return;
 }

 while (s->hnext != ((void*)0) && !ether_addr_equal(s->hnext->addr, sta->addr))
  s = s->hnext;
 if (s->hnext != ((void*)0))
  s->hnext = s->hnext->hnext;
 else
  printk("AP: could not remove STA %pM from hash table\n",
         sta->addr);
}
