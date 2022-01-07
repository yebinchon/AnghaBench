
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int revision; } ;
struct ssb_device {TYPE_4__ id; TYPE_2__* bus; } ;
struct b44 {int phy_addr; int flags; struct ssb_device* sdev; int imask; TYPE_3__* dev; int dma_offset; } ;
struct TYPE_7__ {int * dev_addr; } ;
struct TYPE_5__ {int et1phyaddr; int et0phyaddr; int * et0mac; int * et1mac; } ;
struct TYPE_6__ {scalar_t__ bustype; TYPE_1__ sprom; } ;


 int B44_FLAG_B0_ANDLATER ;
 int EINVAL ;
 int ETH_ALEN ;
 int IMASK_DEF ;
 scalar_t__ SSB_BUSTYPE_SSB ;
 int instance ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int pr_err (char*) ;
 int ssb_dma_translation (struct ssb_device*) ;

__attribute__((used)) static int b44_get_invariants(struct b44 *bp)
{
 struct ssb_device *sdev = bp->sdev;
 int err = 0;
 u8 *addr;

 bp->dma_offset = ssb_dma_translation(sdev);

 if (sdev->bus->bustype == SSB_BUSTYPE_SSB &&
     instance > 1) {
  addr = sdev->bus->sprom.et1mac;
  bp->phy_addr = sdev->bus->sprom.et1phyaddr;
 } else {
  addr = sdev->bus->sprom.et0mac;
  bp->phy_addr = sdev->bus->sprom.et0phyaddr;
 }



 bp->phy_addr &= 0x1F;

 memcpy(bp->dev->dev_addr, addr, ETH_ALEN);

 if (!is_valid_ether_addr(&bp->dev->dev_addr[0])){
  pr_err("Invalid MAC address found in EEPROM\n");
  return -EINVAL;
 }

 bp->imask = IMASK_DEF;





 if (bp->sdev->id.revision >= 7)
  bp->flags |= B44_FLAG_B0_ANDLATER;

 return err;
}
