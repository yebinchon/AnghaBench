
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct macvlan_dev {size_t macaddr_count; } ;


 int ETH_ALEN ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t macvlan_get_size_mac(const struct macvlan_dev *vlan)
{
 if (vlan->macaddr_count == 0)
  return 0;
 return nla_total_size(0)
  + vlan->macaddr_count * nla_total_size(sizeof(u8) * ETH_ALEN);
}
