
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int dma_bitmode; scalar_t__ rda_laddr; scalar_t__ rra_laddr; scalar_t__ tda_laddr; scalar_t__ cda_laddr; scalar_t__ descriptors_laddr; int * rda; int * rra; int * tda; int * cda; int * descriptors; int device; } ;
struct net_device {unsigned int* dev_addr; int base_addr; int watchdog_timeo; int * netdev_ops; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SIZEOF_SONIC_CDA ;
 int SIZEOF_SONIC_DESC ;
 int SIZEOF_SONIC_RD ;
 int SIZEOF_SONIC_TD ;
 int SONIC_BITMODE32 ;
 int SONIC_BUS_SCALE (int ) ;
 scalar_t__ SONIC_CAP0 ;
 int SONIC_CEP ;
 int SONIC_CMD ;
 int SONIC_CRCT ;
 int SONIC_CR_RST ;
 int SONIC_FAET ;
 int SONIC_MEM_SIZE ;
 int SONIC_MPT ;
 int SONIC_NUM_RDS ;
 int SONIC_NUM_TDS ;
 unsigned int SONIC_READ (scalar_t__) ;
 scalar_t__ SONIC_SR ;
 int SONIC_WRITE (int ,int) ;
 int TX_TIMEOUT ;
 int * dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int jazz_sonic_string ;
 int* known_revisions ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int pr_info (char*,unsigned int) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int sonic_netdev_ops ;

__attribute__((used)) static int sonic_probe1(struct net_device *dev)
{
 unsigned int silicon_revision;
 unsigned int val;
 struct sonic_local *lp = netdev_priv(dev);
 int err = -ENODEV;
 int i;

 if (!request_mem_region(dev->base_addr, SONIC_MEM_SIZE, jazz_sonic_string))
  return -EBUSY;






 silicon_revision = SONIC_READ(SONIC_SR);
 i = 0;
 while (known_revisions[i] != 0xffff &&
        known_revisions[i] != silicon_revision)
  i++;

 if (known_revisions[i] == 0xffff) {
  pr_info("SONIC ethernet controller not found (0x%4x)\n",
   silicon_revision);
  goto out;
 }





 SONIC_WRITE(SONIC_CMD,SONIC_CR_RST);
 SONIC_WRITE(SONIC_CEP,0);
 for (i=0; i<3; i++) {
  val = SONIC_READ(SONIC_CAP0-i);
  dev->dev_addr[i*2] = val;
  dev->dev_addr[i*2+1] = val >> 8;
 }

 err = -ENOMEM;



 lp->dma_bitmode = SONIC_BITMODE32;



 lp->descriptors = dma_alloc_coherent(lp->device,
          SIZEOF_SONIC_DESC *
          SONIC_BUS_SCALE(lp->dma_bitmode),
          &lp->descriptors_laddr,
          GFP_KERNEL);
 if (lp->descriptors == ((void*)0))
  goto out;


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

 dev->netdev_ops = &sonic_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;




 SONIC_WRITE(SONIC_CRCT,0xffff);
 SONIC_WRITE(SONIC_FAET,0xffff);
 SONIC_WRITE(SONIC_MPT,0xffff);

 return 0;
out:
 release_mem_region(dev->base_addr, SONIC_MEM_SIZE);
 return err;
}
