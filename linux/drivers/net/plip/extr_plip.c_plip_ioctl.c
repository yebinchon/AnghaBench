
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plipconf {int pcmd; int nibble; int trigger; } ;
struct net_local {int nibble; int trigger; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_ifru; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;


 int SIOCDEVPLIP ;
 int capable (int ) ;
 struct net_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
plip_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct net_local *nl = netdev_priv(dev);
 struct plipconf *pc = (struct plipconf *) &rq->ifr_ifru;

 if (cmd != SIOCDEVPLIP)
  return -EOPNOTSUPP;

 switch(pc->pcmd) {
 case 129:
  pc->trigger = nl->trigger;
  pc->nibble = nl->nibble;
  break;
 case 128:
  if(!capable(CAP_NET_ADMIN))
   return -EPERM;
  nl->trigger = pc->trigger;
  nl->nibble = pc->nibble;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
