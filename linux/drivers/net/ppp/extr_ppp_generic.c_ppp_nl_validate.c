
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 size_t IFLA_PPP_DEV_FD ;
 scalar_t__ nla_get_s32 (struct nlattr*) ;

__attribute__((used)) static int ppp_nl_validate(struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 if (!data)
  return -EINVAL;

 if (!data[IFLA_PPP_DEV_FD])
  return -EINVAL;
 if (nla_get_s32(data[IFLA_PPP_DEV_FD]) < 0)
  return -EBADF;

 return 0;
}
