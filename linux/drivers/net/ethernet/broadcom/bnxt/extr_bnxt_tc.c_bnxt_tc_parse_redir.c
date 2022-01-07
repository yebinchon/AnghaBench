
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_action_entry {struct net_device* dev; } ;
struct bnxt_tc_actions {struct net_device* dst_dev; int flags; } ;
struct bnxt {int dev; } ;


 int BNXT_TC_ACTION_FLAG_FWD ;
 int EINVAL ;
 int netdev_info (int ,char*) ;

__attribute__((used)) static int bnxt_tc_parse_redir(struct bnxt *bp,
          struct bnxt_tc_actions *actions,
          const struct flow_action_entry *act)
{
 struct net_device *dev = act->dev;

 if (!dev) {
  netdev_info(bp->dev, "no dev in mirred action");
  return -EINVAL;
 }

 actions->flags |= BNXT_TC_ACTION_FLAG_FWD;
 actions->dst_dev = dev;
 return 0;
}
