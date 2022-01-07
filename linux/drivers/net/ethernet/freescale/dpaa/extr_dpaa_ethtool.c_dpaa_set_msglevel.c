
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct dpaa_priv {int msg_enable; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static void dpaa_set_msglevel(struct net_device *net_dev,
         u32 msg_enable)
{
 ((struct dpaa_priv *)netdev_priv(net_dev))->msg_enable = msg_enable;
}
