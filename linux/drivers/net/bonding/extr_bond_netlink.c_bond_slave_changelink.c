
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {char* name; } ;
struct bonding {int dummy; } ;
struct bond_opt_value {int dummy; } ;
typedef int queue_id_str ;


 int BOND_OPT_QUEUE_ID ;
 size_t IFLA_BOND_SLAVE_QUEUE_ID ;
 int IFNAMSIZ ;
 int __bond_opt_set (struct bonding*,int ,struct bond_opt_value*) ;
 int bond_opt_initstr (struct bond_opt_value*,char*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int nla_get_u16 (struct nlattr*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int bond_slave_changelink(struct net_device *bond_dev,
     struct net_device *slave_dev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct bond_opt_value newval;
 int err;

 if (!data)
  return 0;

 if (data[IFLA_BOND_SLAVE_QUEUE_ID]) {
  u16 queue_id = nla_get_u16(data[IFLA_BOND_SLAVE_QUEUE_ID]);
  char queue_id_str[IFNAMSIZ + 7];


  snprintf(queue_id_str, sizeof(queue_id_str), "%s:%u\n",
    slave_dev->name, queue_id);
  bond_opt_initstr(&newval, queue_id_str);
  err = __bond_opt_set(bond, BOND_OPT_QUEUE_ID, &newval);
  if (err)
   return err;
 }

 return 0;
}
