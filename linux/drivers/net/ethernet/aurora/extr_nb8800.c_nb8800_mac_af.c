
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NB8800_RX_CTL ;
 int RX_AF_EN ;
 int nb8800_modb (int ,int ,int ,int) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static void nb8800_mac_af(struct net_device *dev, bool enable)
{
 nb8800_modb(netdev_priv(dev), NB8800_RX_CTL, RX_AF_EN, enable);
}
