
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {struct sta_info* hnext; int addr; } ;
struct ap_data {struct sta_info** sta_hash; } ;


 size_t STA_HASH (int *) ;
 int ether_addr_equal (int ,int *) ;

__attribute__((used)) static struct sta_info* ap_get_sta(struct ap_data *ap, u8 *sta)
{
 struct sta_info *s;

 s = ap->sta_hash[STA_HASH(sta)];
 while (s != ((void*)0) && !ether_addr_equal(s->addr, sta))
  s = s->hnext;
 return s;
}
