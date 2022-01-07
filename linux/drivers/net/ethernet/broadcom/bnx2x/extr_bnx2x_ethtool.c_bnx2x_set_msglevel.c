
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2x {int msg_enable; } ;


 int BNX2X_MSG_MCP ;
 int CAP_NET_ADMIN ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int KERN_INFO ;
 int bnx2x_fw_dump_lvl (struct bnx2x*,int ) ;
 scalar_t__ capable (int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2x_set_msglevel(struct net_device *dev, u32 level)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (capable(CAP_NET_ADMIN)) {

  if (IS_PF(bp) && (level & BNX2X_MSG_MCP))
   bnx2x_fw_dump_lvl(bp, KERN_INFO);
  bp->msg_enable = level;
 }
}
