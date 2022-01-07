
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct atmel_pmecc_user {int eccbytes; int isr; struct atmel_pmecc* pmecc; } ;
struct TYPE_3__ {scalar_t__ errloc; } ;
struct atmel_pmecc {int dev; TYPE_2__* caps; TYPE_1__ regs; } ;
struct TYPE_4__ {int el_offset; } ;


 scalar_t__ ATMEL_PMERRLOC_EL (int ,int) ;
 int BIT (int) ;
 int EINVAL ;
 int atmel_pmecc_err_location (struct atmel_pmecc_user*) ;
 int atmel_pmecc_gen_syndrome (struct atmel_pmecc_user*,int) ;
 int atmel_pmecc_get_sigma (struct atmel_pmecc_user*) ;
 int atmel_pmecc_substitute (struct atmel_pmecc_user*) ;
 int dev_dbg (int ,char*,...) ;
 int get_sectorsize (struct atmel_pmecc_user*) ;
 int readl_relaxed (scalar_t__) ;

int atmel_pmecc_correct_sector(struct atmel_pmecc_user *user, int sector,
          void *data, void *ecc)
{
 struct atmel_pmecc *pmecc = user->pmecc;
 int sectorsize = get_sectorsize(user);
 int eccbytes = user->eccbytes;
 int i, nerrors;

 if (!(user->isr & BIT(sector)))
  return 0;

 atmel_pmecc_gen_syndrome(user, sector);
 atmel_pmecc_substitute(user);
 atmel_pmecc_get_sigma(user);

 nerrors = atmel_pmecc_err_location(user);
 if (nerrors < 0)
  return nerrors;

 for (i = 0; i < nerrors; i++) {
  const char *area;
  int byte, bit;
  u32 errpos;
  u8 *ptr;

  errpos = readl_relaxed(pmecc->regs.errloc +
    ATMEL_PMERRLOC_EL(pmecc->caps->el_offset, i));
  errpos--;

  byte = errpos / 8;
  bit = errpos % 8;

  if (byte < sectorsize) {
   ptr = data + byte;
   area = "data";
  } else if (byte < sectorsize + eccbytes) {
   ptr = ecc + byte - sectorsize;
   area = "ECC";
  } else {
   dev_dbg(pmecc->dev,
    "Invalid errpos value (%d, max is %d)\n",
    errpos, (sectorsize + eccbytes) * 8);
   return -EINVAL;
  }

  dev_dbg(pmecc->dev,
   "Bit flip in %s area, byte %d: 0x%02x -> 0x%02x\n",
   area, byte, *ptr, (unsigned int)(*ptr ^ BIT(bit)));

  *ptr ^= BIT(bit);
 }

 return nerrors;
}
