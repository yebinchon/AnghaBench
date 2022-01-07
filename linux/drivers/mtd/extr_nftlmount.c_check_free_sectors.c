
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mtd_info {int oobsize; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {TYPE_1__ mbd; } ;


 int GFP_KERNEL ;
 int SECTORSIZE ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ memcmpb (int *,int,int) ;
 scalar_t__ mtd_read (struct mtd_info*,unsigned int,int,size_t*,int *) ;
 scalar_t__ nftl_read_oob (struct mtd_info*,unsigned int,int,size_t*,int *) ;

__attribute__((used)) static int check_free_sectors(struct NFTLrecord *nftl, unsigned int address, int len,
         int check_oob)
{
 struct mtd_info *mtd = nftl->mbd.mtd;
 size_t retlen;
 int i, ret;
 u8 *buf;

 buf = kmalloc(SECTORSIZE + mtd->oobsize, GFP_KERNEL);
 if (!buf)
  return -1;

 ret = -1;
 for (i = 0; i < len; i += SECTORSIZE) {
  if (mtd_read(mtd, address, SECTORSIZE, &retlen, buf))
   goto out;
  if (memcmpb(buf, 0xff, SECTORSIZE) != 0)
   goto out;

  if (check_oob) {
   if(nftl_read_oob(mtd, address, mtd->oobsize,
      &retlen, &buf[SECTORSIZE]) < 0)
    goto out;
   if (memcmpb(buf + SECTORSIZE, 0xff, mtd->oobsize) != 0)
    goto out;
  }
  address += SECTORSIZE;
 }

 ret = 0;

out:
 kfree(buf);
 return ret;
}
