
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device_stats {int rx_missed_errors; } ;
struct net_device {int base_addr; } ;
struct de4x5_private {struct net_device_stats stats; } ;


 int DE4X5_MFC ;
 int MFC_CNTR ;
 int MFC_OVFL ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
de4x5_get_stats(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;

    lp->stats.rx_missed_errors = (int)(inl(DE4X5_MFC) & (MFC_OVFL | MFC_CNTR));

    return &lp->stats;
}
