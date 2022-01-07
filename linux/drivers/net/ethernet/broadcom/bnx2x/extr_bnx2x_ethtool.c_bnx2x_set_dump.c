
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct bnx2x {int dump_preset_idx; } ;


 int DUMP_MAX_PRESETS ;
 int EINVAL ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_dump(struct net_device *dev, struct ethtool_dump *val)
{
 struct bnx2x *bp = netdev_priv(dev);


 if (val->flag < 1 || val->flag > DUMP_MAX_PRESETS)
  return -EINVAL;

 bp->dump_preset_idx = val->flag;
 return 0;
}
