
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 size_t IFLA_ADDRESS ;

__attribute__((used)) static int nlmon_validate(struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS])
  return -EINVAL;
 return 0;
}
