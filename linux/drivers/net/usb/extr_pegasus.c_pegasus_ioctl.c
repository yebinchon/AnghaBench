
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int ifr_ifru; } ;
struct TYPE_5__ {int phy; } ;
typedef TYPE_1__ pegasus_t ;
typedef int __u16 ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;

 int capable (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int read_mii_word (TYPE_1__*,int,int,int*) ;
 int write_mii_word (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static int pegasus_ioctl(struct net_device *net, struct ifreq *rq, int cmd)
{
 __u16 *data = (__u16 *) &rq->ifr_ifru;
 pegasus_t *pegasus = netdev_priv(net);
 int res;

 switch (cmd) {
 case 128:
  data[0] = pegasus->phy;

 case 128 + 1:
  read_mii_word(pegasus, data[0], data[1] & 0x1f, &data[3]);
  res = 0;
  break;
 case 128 + 2:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  write_mii_word(pegasus, pegasus->phy, data[1] & 0x1f, &data[2]);
  res = 0;
  break;
 default:
  res = -EOPNOTSUPP;
 }
 return res;
}
