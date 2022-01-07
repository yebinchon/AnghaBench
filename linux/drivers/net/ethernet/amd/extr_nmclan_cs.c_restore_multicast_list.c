
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {unsigned int base_addr; int flags; int name; } ;
struct TYPE_4__ {int multicast_num_addrs; } ;
typedef TYPE_1__ mace_private ;


 int IFF_PROMISC ;
 int MACE_MACCC ;
 int MACE_MACCC_ENRCV ;
 int MACE_MACCC_ENXMT ;
 int MACE_MACCC_PROM ;
 int MACE_UTR ;
 int MACE_UTR_LOOP_EXTERNAL ;
 int mace_write (TYPE_1__*,unsigned int,int ,int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void restore_multicast_list(struct net_device *dev)
{
  unsigned int ioaddr = dev->base_addr;
  mace_private *lp = netdev_priv(dev);

  pr_debug("%s: restoring Rx mode to %d addresses.\n", dev->name,
 lp->multicast_num_addrs);

  if (dev->flags & IFF_PROMISC) {

    mace_write(lp,ioaddr, MACE_UTR, MACE_UTR_LOOP_EXTERNAL);
    mace_write(lp, ioaddr, MACE_MACCC,
      MACE_MACCC_PROM | MACE_MACCC_ENXMT | MACE_MACCC_ENRCV
    );
  } else {

    mace_write(lp, ioaddr, MACE_UTR, MACE_UTR_LOOP_EXTERNAL);
    mace_write(lp, ioaddr, MACE_MACCC, MACE_MACCC_ENXMT | MACE_MACCC_ENRCV);
  }
}
