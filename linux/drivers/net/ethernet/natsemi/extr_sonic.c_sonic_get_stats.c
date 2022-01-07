
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_missed_errors; int rx_frame_errors; int rx_crc_errors; } ;
struct sonic_local {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;


 int SONIC_CRCT ;
 int SONIC_FAET ;
 int SONIC_MPT ;
 scalar_t__ SONIC_READ (int ) ;
 int SONIC_WRITE (int ,int) ;
 struct sonic_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *sonic_get_stats(struct net_device *dev)
{
 struct sonic_local *lp = netdev_priv(dev);


 lp->stats.rx_crc_errors += SONIC_READ(SONIC_CRCT);
 SONIC_WRITE(SONIC_CRCT, 0xffff);
 lp->stats.rx_frame_errors += SONIC_READ(SONIC_FAET);
 SONIC_WRITE(SONIC_FAET, 0xffff);
 lp->stats.rx_missed_errors += SONIC_READ(SONIC_MPT);
 SONIC_WRITE(SONIC_MPT, 0xffff);

 return &lp->stats;
}
