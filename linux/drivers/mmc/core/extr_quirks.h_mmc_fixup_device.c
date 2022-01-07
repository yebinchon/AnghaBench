
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct mmc_fixup {scalar_t__ manfid; scalar_t__ oemid; scalar_t__ name; scalar_t__ cis_vendor; scalar_t__ cis_device; scalar_t__ ext_csd_rev; scalar_t__ rev_start; scalar_t__ rev_end; int data; int (* vendor_fixup ) (struct mmc_card*,int ) ;} ;
struct TYPE_6__ {scalar_t__ rev; } ;
struct TYPE_5__ {scalar_t__ vendor; scalar_t__ device; } ;
struct TYPE_4__ {scalar_t__ manfid; scalar_t__ oemid; int prod_name; } ;
struct mmc_card {int dev; TYPE_3__ ext_csd; TYPE_2__ cis; TYPE_1__ cid; } ;


 scalar_t__ CID_MANFID_ANY ;
 scalar_t__ CID_NAME_ANY ;
 scalar_t__ CID_OEMID_ANY ;
 scalar_t__ EXT_CSD_REV_ANY ;
 scalar_t__ SDIO_ANY_ID ;
 scalar_t__ cid_rev_card (struct mmc_card*) ;
 int dev_dbg (int *,char*,int (*) (struct mmc_card*,int )) ;
 int strncmp (scalar_t__,int ,int) ;
 int stub1 (struct mmc_card*,int ) ;

__attribute__((used)) static inline void mmc_fixup_device(struct mmc_card *card,
        const struct mmc_fixup *table)
{
 const struct mmc_fixup *f;
 u64 rev = cid_rev_card(card);

 for (f = table; f->vendor_fixup; f++) {
  if ((f->manfid == CID_MANFID_ANY ||
       f->manfid == card->cid.manfid) &&
      (f->oemid == CID_OEMID_ANY ||
       f->oemid == card->cid.oemid) &&
      (f->name == CID_NAME_ANY ||
       !strncmp(f->name, card->cid.prod_name,
         sizeof(card->cid.prod_name))) &&
      (f->cis_vendor == card->cis.vendor ||
       f->cis_vendor == (u16) SDIO_ANY_ID) &&
      (f->cis_device == card->cis.device ||
       f->cis_device == (u16) SDIO_ANY_ID) &&
      (f->ext_csd_rev == EXT_CSD_REV_ANY ||
       f->ext_csd_rev == card->ext_csd.rev) &&
      rev >= f->rev_start && rev <= f->rev_end) {
   dev_dbg(&card->dev, "calling %ps\n", f->vendor_fixup);
   f->vendor_fixup(card, f->data);
  }
 }
}
