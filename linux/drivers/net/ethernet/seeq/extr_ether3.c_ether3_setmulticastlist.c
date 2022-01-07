
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_3__ {int config1; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;


 int CFG1_LOCBUFMEM ;
 int CFG1_RECVPROMISC ;
 int CFG1_RECVSPECBRMULTI ;
 int CFG1_RECVSPECBROAD ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int REG_CONFIG1 ;
 int ether3_outw (int,int ) ;
 int netdev_mc_empty (struct net_device*) ;
 TYPE_2__* priv (struct net_device*) ;

__attribute__((used)) static void ether3_setmulticastlist(struct net_device *dev)
{
 priv(dev)->regs.config1 &= ~CFG1_RECVPROMISC;

 if (dev->flags & IFF_PROMISC) {

  priv(dev)->regs.config1 |= CFG1_RECVPROMISC;
 } else if (dev->flags & IFF_ALLMULTI || !netdev_mc_empty(dev)) {
  priv(dev)->regs.config1 |= CFG1_RECVSPECBRMULTI;
 } else
  priv(dev)->regs.config1 |= CFG1_RECVSPECBROAD;

 ether3_outw(priv(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);
}
