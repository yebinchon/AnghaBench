
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ ETH_ALEN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_MACVLAN_FLAGS ;
 size_t IFLA_MACVLAN_MACADDR ;
 size_t IFLA_MACVLAN_MACADDR_COUNT ;
 size_t IFLA_MACVLAN_MACADDR_MODE ;
 size_t IFLA_MACVLAN_MODE ;
 int MACVLAN_FLAG_NOPROMISC ;
 int is_valid_ether_addr (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int macvlan_validate(struct nlattr *tb[], struct nlattr *data[],
       struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }

 if (!data)
  return 0;

 if (data[IFLA_MACVLAN_FLAGS] &&
     nla_get_u16(data[IFLA_MACVLAN_FLAGS]) & ~MACVLAN_FLAG_NOPROMISC)
  return -EINVAL;

 if (data[IFLA_MACVLAN_MODE]) {
  switch (nla_get_u32(data[IFLA_MACVLAN_MODE])) {
  case 130:
  case 128:
  case 132:
  case 131:
  case 129:
   break;
  default:
   return -EINVAL;
  }
 }

 if (data[IFLA_MACVLAN_MACADDR_MODE]) {
  switch (nla_get_u32(data[IFLA_MACVLAN_MACADDR_MODE])) {
  case 136:
  case 135:
  case 134:
  case 133:
   break;
  default:
   return -EINVAL;
  }
 }

 if (data[IFLA_MACVLAN_MACADDR]) {
  if (nla_len(data[IFLA_MACVLAN_MACADDR]) != ETH_ALEN)
   return -EINVAL;

  if (!is_valid_ether_addr(nla_data(data[IFLA_MACVLAN_MACADDR])))
   return -EADDRNOTAVAIL;
 }

 if (data[IFLA_MACVLAN_MACADDR_COUNT])
  return -EINVAL;

 return 0;
}
