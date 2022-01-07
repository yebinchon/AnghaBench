
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct mtd_info {scalar_t__ size; } ;
struct mtd_erase_region_info {scalar_t__ offset; int erasesize; } ;
struct TYPE_2__ {int numeraseregions; int erasesize; struct mtd_erase_region_info* eraseregions; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; TYPE_1__ mtd; } ;
struct erase_info {int addr; int len; scalar_t__ fail_addr; } ;


 int BUG_ON (int) ;
 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MTD_FAIL_ADDR_UNKNOWN ;
 int kfree (struct erase_info*) ;
 struct erase_info* kmalloc (int,int ) ;
 int mtd_erase (struct mtd_info*,struct erase_info*) ;

__attribute__((used)) static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct mtd_concat *concat = CONCAT(mtd);
 struct mtd_info *subdev;
 int i, err;
 uint64_t length, offset = 0;
 struct erase_info *erase;







 if (!concat->mtd.numeraseregions) {

  if (instr->addr & (concat->mtd.erasesize - 1))
   return -EINVAL;
  if (instr->len & (concat->mtd.erasesize - 1))
   return -EINVAL;
 } else {

  struct mtd_erase_region_info *erase_regions =
      concat->mtd.eraseregions;




  for (i = 0; i < concat->mtd.numeraseregions &&
       instr->addr >= erase_regions[i].offset; i++) ;
  --i;






  if (i < 0 || instr->addr & (erase_regions[i].erasesize - 1))
   return -EINVAL;




  for (; i < concat->mtd.numeraseregions &&
       (instr->addr + instr->len) >= erase_regions[i].offset;
       ++i) ;
  --i;



  if (i < 0 || ((instr->addr + instr->len) &
     (erase_regions[i].erasesize - 1)))
   return -EINVAL;
 }


 erase = kmalloc(sizeof (struct erase_info), GFP_KERNEL);

 if (!erase)
  return -ENOMEM;

 *erase = *instr;
 length = instr->len;





 for (i = 0; i < concat->num_subdev; i++) {
  subdev = concat->subdev[i];
  if (subdev->size <= erase->addr) {
   erase->addr -= subdev->size;
   offset += subdev->size;
  } else {
   break;
  }
 }


 BUG_ON(i >= concat->num_subdev);


 err = 0;
 for (; length > 0; i++) {

  subdev = concat->subdev[i];


  if (erase->addr + length > subdev->size)
   erase->len = subdev->size - erase->addr;
  else
   erase->len = length;

  length -= erase->len;
  if ((err = mtd_erase(subdev, erase))) {


   BUG_ON(err == -EINVAL);
   if (erase->fail_addr != MTD_FAIL_ADDR_UNKNOWN)
    instr->fail_addr = erase->fail_addr + offset;
   break;
  }
  erase->addr = 0;
  offset += subdev->size;
 }
 kfree(erase);

 return err;
}
