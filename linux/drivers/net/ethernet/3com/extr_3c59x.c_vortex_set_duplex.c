
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int info1; scalar_t__ partner_flow_ctrl; scalar_t__ flow_ctrl; scalar_t__ full_duplex; scalar_t__ large_frames; } ;
struct net_device {int name; } ;


 int Wn3_MAC_Ctrl ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int pr_info (char*,int ,char*) ;
 int window_write16 (struct vortex_private*,int,int,int ) ;

__attribute__((used)) static void
vortex_set_duplex(struct net_device *dev)
{
 struct vortex_private *vp = netdev_priv(dev);

 pr_info("%s:  setting %s-duplex.\n",
  dev->name, (vp->full_duplex) ? "full" : "half");


 window_write16(vp,
         ((vp->info1 & 0x8000) || vp->full_duplex ? 0x20 : 0) |
         (vp->large_frames ? 0x40 : 0) |
         ((vp->full_duplex && vp->flow_ctrl && vp->partner_flow_ctrl) ?
   0x100 : 0),
         3, Wn3_MAC_Ctrl);
}
