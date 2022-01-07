
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int dma_bitmode; scalar_t__ rda_laddr; scalar_t__ rra_laddr; scalar_t__ tda_laddr; scalar_t__ cda_laddr; scalar_t__ descriptors_laddr; int * rda; int * rra; int * tda; int * cda; int * descriptors; int device; } ;
struct net_device {int watchdog_timeo; int * netdev_ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIZEOF_SONIC_CDA ;
 int SIZEOF_SONIC_DESC ;
 int SIZEOF_SONIC_RD ;
 int SIZEOF_SONIC_TD ;
 int SONIC_BUS_SCALE (int ) ;
 int SONIC_CRCT ;
 int SONIC_FAET ;
 int SONIC_MPT ;
 int SONIC_NUM_RDS ;
 int SONIC_NUM_TDS ;
 int SONIC_WRITE (int ,int) ;
 int TX_TIMEOUT ;
 int * dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int macsonic_netdev_ops ;
 struct sonic_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macsonic_init(struct net_device *dev)
{
 struct sonic_local* lp = netdev_priv(dev);



 lp->descriptors = dma_alloc_coherent(lp->device,
          SIZEOF_SONIC_DESC *
          SONIC_BUS_SCALE(lp->dma_bitmode),
          &lp->descriptors_laddr,
          GFP_KERNEL);
 if (lp->descriptors == ((void*)0))
  return -ENOMEM;


 lp->cda = lp->descriptors;
 lp->tda = lp->cda + (SIZEOF_SONIC_CDA
                      * SONIC_BUS_SCALE(lp->dma_bitmode));
 lp->rda = lp->tda + (SIZEOF_SONIC_TD * SONIC_NUM_TDS
                      * SONIC_BUS_SCALE(lp->dma_bitmode));
 lp->rra = lp->rda + (SIZEOF_SONIC_RD * SONIC_NUM_RDS
                      * SONIC_BUS_SCALE(lp->dma_bitmode));

 lp->cda_laddr = lp->descriptors_laddr;
 lp->tda_laddr = lp->cda_laddr + (SIZEOF_SONIC_CDA
                      * SONIC_BUS_SCALE(lp->dma_bitmode));
 lp->rda_laddr = lp->tda_laddr + (SIZEOF_SONIC_TD * SONIC_NUM_TDS
                      * SONIC_BUS_SCALE(lp->dma_bitmode));
 lp->rra_laddr = lp->rda_laddr + (SIZEOF_SONIC_RD * SONIC_NUM_RDS
                      * SONIC_BUS_SCALE(lp->dma_bitmode));

 dev->netdev_ops = &macsonic_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;




 SONIC_WRITE(SONIC_CRCT, 0xffff);
 SONIC_WRITE(SONIC_FAET, 0xffff);
 SONIC_WRITE(SONIC_MPT, 0xffff);

 return 0;
}
