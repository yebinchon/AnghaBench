
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int chipset; } ;


 int DC21140 ;
 int DC2114x ;
 int DE4X5_GEP ;
 int DE4X5_SIGR ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
gep_rd(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;

    if (lp->chipset == DC21140) {
 return inl(DE4X5_GEP);
    } else if ((lp->chipset & ~0x00ff) == DC2114x) {
 return inl(DE4X5_SIGR) & 0x000fffff;
    }

    return 0;
}
