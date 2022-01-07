
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_ifru; } ;
struct TYPE_5__ {int phy; } ;
typedef TYPE_1__ rtl8150_t ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;

 int capable (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int read_mii_word (TYPE_1__*,int,int,int*) ;
 int write_mii_word (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int rtl8150_ioctl(struct net_device *netdev, struct ifreq *rq, int cmd)
{
 rtl8150_t *dev = netdev_priv(netdev);
 u16 *data = (u16 *) & rq->ifr_ifru;
 int res = 0;

 switch (cmd) {
 case 128:
  data[0] = dev->phy;

 case 128 + 1:
  read_mii_word(dev, dev->phy, (data[1] & 0x1f), &data[3]);
  break;
 case 128 + 2:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  write_mii_word(dev, dev->phy, (data[1] & 0x1f), data[2]);
  break;
 default:
  res = -EOPNOTSUPP;
 }

 return res;
}
