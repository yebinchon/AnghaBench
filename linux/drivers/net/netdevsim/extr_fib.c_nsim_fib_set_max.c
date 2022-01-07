
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nsim_fib_entry {scalar_t__ num; scalar_t__ max; } ;
struct TYPE_3__ {struct nsim_fib_entry rules; struct nsim_fib_entry fib; } ;
struct TYPE_4__ {struct nsim_fib_entry rules; struct nsim_fib_entry fib; } ;
struct nsim_fib_data {TYPE_1__ ipv6; TYPE_2__ ipv4; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef enum nsim_resource_id { ____Placeholder_nsim_resource_id } nsim_resource_id ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;




 struct nsim_fib_data* net_generic (struct net*,int ) ;
 int nsim_fib_net_id ;

int nsim_fib_set_max(struct net *net, enum nsim_resource_id res_id, u64 val,
       struct netlink_ext_ack *extack)
{
 struct nsim_fib_data *fib_data = net_generic(net, nsim_fib_net_id);
 struct nsim_fib_entry *entry;
 int err = 0;

 switch (res_id) {
 case 131:
  entry = &fib_data->ipv4.fib;
  break;
 case 130:
  entry = &fib_data->ipv4.rules;
  break;
 case 129:
  entry = &fib_data->ipv6.fib;
  break;
 case 128:
  entry = &fib_data->ipv6.rules;
  break;
 default:
  return 0;
 }




 if (val < entry->num) {
  NL_SET_ERR_MSG_MOD(extack, "New size is less than current occupancy");
  err = -EINVAL;
 } else {
  entry->max = val;
 }

 return err;
}
