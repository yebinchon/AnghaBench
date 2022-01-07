
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_fib_entry {scalar_t__ num; scalar_t__ max; } ;
struct netlink_ext_ack {int dummy; } ;


 int ENOSPC ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int nsim_fib_rule_account(struct nsim_fib_entry *entry, bool add,
     struct netlink_ext_ack *extack)
{
 int err = 0;

 if (add) {
  if (entry->num < entry->max) {
   entry->num++;
  } else {
   err = -ENOSPC;
   NL_SET_ERR_MSG_MOD(extack, "Exceeded number of supported fib rule entries");
  }
 } else {
  entry->num--;
 }

 return err;
}
