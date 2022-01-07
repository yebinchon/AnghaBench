
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
 size_t IFLA_MTU ;
 int is_valid_ether_addr (int ) ;
 int is_valid_veth_mtu (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int veth_validate(struct nlattr *tb[], struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }
 if (tb[IFLA_MTU]) {
  if (!is_valid_veth_mtu(nla_get_u32(tb[IFLA_MTU])))
   return -EINVAL;
 }
 return 0;
}
