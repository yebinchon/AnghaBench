
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int nsim_validate(struct nlattr *tb[], struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 NL_SET_ERR_MSG_MOD(extack, "Please use: echo \"[ID] [PORT_COUNT]\" > /sys/bus/netdevsim/new_device");
 return -EOPNOTSUPP;
}
