
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct board_info {int mii; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 int netif_running (struct net_device*) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct board_info *dm = to_dm9000_board(dev);

 if (!netif_running(dev))
  return -EINVAL;

 return generic_mii_ioctl(&dm->mii, if_mii(req), cmd, ((void*)0));
}
