
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {size_t active; int chipset; TYPE_1__* phy; scalar_t__ useMII; int useSROM; } ;
struct TYPE_2__ {int addr; scalar_t__ id; } ;


 int DC2114x ;
 int DE4X5_MII ;
 int DE4X5_SISR ;
 int MII_SR ;
 int SISR_LPN ;
 int inl (int ) ;
 int mii_rd (int ,int ,int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
is_anc_capable(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;

    if (lp->phy[lp->active].id && (!lp->useSROM || lp->useMII)) {
 return mii_rd(MII_SR, lp->phy[lp->active].addr, DE4X5_MII);
    } else if ((lp->chipset & ~0x00ff) == DC2114x) {
 return (inl(DE4X5_SISR) & SISR_LPN) >> 12;
    } else {
 return 0;
    }
}
