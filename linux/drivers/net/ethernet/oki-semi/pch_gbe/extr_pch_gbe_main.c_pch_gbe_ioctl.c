
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int SIOCSHWTSTAMP ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int hwtstamp_ioctl (struct net_device*,struct ifreq*,int) ;
 int if_mii (struct ifreq*) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int pch_gbe_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 netdev_dbg(netdev, "cmd : 0x%04x\n", cmd);

 if (cmd == SIOCSHWTSTAMP)
  return hwtstamp_ioctl(netdev, ifr, cmd);

 return generic_mii_ioctl(&adapter->mii, if_mii(ifr), cmd, ((void*)0));
}
