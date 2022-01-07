
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nsim_fib_entry {int num; int max; } ;
struct TYPE_4__ {struct nsim_fib_entry rules; struct nsim_fib_entry fib; } ;
struct TYPE_3__ {struct nsim_fib_entry rules; struct nsim_fib_entry fib; } ;
struct nsim_fib_data {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct net {int dummy; } ;
typedef enum nsim_resource_id { ____Placeholder_nsim_resource_id } nsim_resource_id ;






 struct nsim_fib_data* net_generic (struct net*,int ) ;
 int nsim_fib_net_id ;

u64 nsim_fib_get_val(struct net *net, enum nsim_resource_id res_id, bool max)
{
 struct nsim_fib_data *fib_data = net_generic(net, nsim_fib_net_id);
 struct nsim_fib_entry *entry;

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

 return max ? entry->max : entry->num;
}
