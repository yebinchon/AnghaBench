
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dfq_valid; int mac_suspended; int noisecalc; int irq_mask; int * dma_reason; scalar_t__ irq_reason; int phy; int stats; } ;


 int B43legacy_IRQ_MASKTEMPLATE ;
 int memset (int *,int ,int) ;
 int setup_struct_phy_for_init (struct b43legacy_wldev*,int *) ;

__attribute__((used)) static void setup_struct_wldev_for_init(struct b43legacy_wldev *dev)
{

 dev->dfq_valid = 0;


 memset(&dev->stats, 0, sizeof(dev->stats));

 setup_struct_phy_for_init(dev, &dev->phy);


 dev->irq_reason = 0;
 memset(dev->dma_reason, 0, sizeof(dev->dma_reason));
 dev->irq_mask = B43legacy_IRQ_MASKTEMPLATE;

 dev->mac_suspended = 1;


 memset(&dev->noisecalc, 0, sizeof(dev->noisecalc));
}
