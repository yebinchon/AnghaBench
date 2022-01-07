
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
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int is_valid_ether_addr (int ) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int vrf_validate(struct nlattr *tb[], struct nlattr *data[],
   struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN) {
   NL_SET_ERR_MSG(extack, "Invalid hardware address");
   return -EINVAL;
  }
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS]))) {
   NL_SET_ERR_MSG(extack, "Invalid hardware address");
   return -EADDRNOTAVAIL;
  }
 }
 return 0;
}
