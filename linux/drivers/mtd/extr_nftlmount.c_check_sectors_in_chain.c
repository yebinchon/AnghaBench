
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nftl_bci {unsigned int Status; unsigned int Status1; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {unsigned int EraseSize; unsigned int* ReplUnitTable; unsigned int nb_blocks; TYPE_1__ mbd; } ;


 unsigned int BLOCK_NIL ;
 unsigned int SECTORSIZE ;

 void* SECTOR_IGNORE ;
 int check_free_sectors (struct NFTLrecord*,unsigned int,unsigned int,int ) ;
 int memcmpb (struct nftl_bci*,int,int) ;
 scalar_t__ nftl_read_oob (struct mtd_info*,unsigned int,int,size_t*,char*) ;
 int nftl_write_oob (struct mtd_info*,unsigned int,int,size_t*,char*) ;
 int printk (char*,unsigned int,...) ;

__attribute__((used)) static void check_sectors_in_chain(struct NFTLrecord *nftl, unsigned int first_block)
{
 struct mtd_info *mtd = nftl->mbd.mtd;
 unsigned int block, i, status;
 struct nftl_bci bci;
 int sectors_per_block;
 size_t retlen;

 sectors_per_block = nftl->EraseSize / SECTORSIZE;
 block = first_block;
 for (;;) {
  for (i = 0; i < sectors_per_block; i++) {
   if (nftl_read_oob(mtd,
       block * nftl->EraseSize + i * SECTORSIZE,
       8, &retlen, (char *)&bci) < 0)
    status = SECTOR_IGNORE;
   else
    status = bci.Status | bci.Status1;

   switch(status) {
   case 128:


    if (memcmpb(&bci, 0xff, 8) != 0 ||
        check_free_sectors(nftl, block * nftl->EraseSize + i * SECTORSIZE,
             SECTORSIZE, 0) != 0) {
     printk("Incorrect free sector %d in block %d: "
            "marking it as ignored\n",
            i, block);


     bci.Status = SECTOR_IGNORE;
     bci.Status1 = SECTOR_IGNORE;
     nftl_write_oob(mtd, block *
             nftl->EraseSize +
             i * SECTORSIZE, 8,
             &retlen, (char *)&bci);
    }
    break;
   default:
    break;
   }
  }


  block = nftl->ReplUnitTable[block];
  if (!(block == BLOCK_NIL || block < nftl->nb_blocks))
   printk("incorrect ReplUnitTable[] : %d\n", block);
  if (block == BLOCK_NIL || block >= nftl->nb_blocks)
   break;
 }
}
