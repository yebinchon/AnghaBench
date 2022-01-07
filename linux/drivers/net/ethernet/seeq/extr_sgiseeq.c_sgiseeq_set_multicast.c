
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_private {unsigned char mode; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 unsigned char SEEQ_RCMD_RANY ;
 unsigned char SEEQ_RCMD_RBCAST ;
 unsigned char SEEQ_RCMD_RBMCAST ;
 int netdev_mc_empty (struct net_device*) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 int sgiseeq_reset (struct net_device*) ;

__attribute__((used)) static void sgiseeq_set_multicast(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 unsigned char oldmode = sp->mode;

 if(dev->flags & IFF_PROMISC)
  sp->mode = SEEQ_RCMD_RANY;
 else if ((dev->flags & IFF_ALLMULTI) || !netdev_mc_empty(dev))
  sp->mode = SEEQ_RCMD_RBMCAST;
 else
  sp->mode = SEEQ_RCMD_RBCAST;





 if (oldmode != sp->mode)
  sgiseeq_reset(dev);
}
