
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rules; } ;
struct TYPE_3__ {int rules; } ;
struct nsim_fib_data {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib_notifier_info {int family; struct netlink_ext_ack* extack; int net; } ;




 struct nsim_fib_data* net_generic (int ,int ) ;
 int nsim_fib_net_id ;
 int nsim_fib_rule_account (int *,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int nsim_fib_rule_event(struct fib_notifier_info *info, bool add)
{
 struct nsim_fib_data *data = net_generic(info->net, nsim_fib_net_id);
 struct netlink_ext_ack *extack = info->extack;
 int err = 0;

 switch (info->family) {
 case 129:
  err = nsim_fib_rule_account(&data->ipv4.rules, add, extack);
  break;
 case 128:
  err = nsim_fib_rule_account(&data->ipv6.rules, add, extack);
  break;
 }

 return err;
}
