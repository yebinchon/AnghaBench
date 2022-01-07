
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nftl_uci1 {int EraseMark; int EraseMark1; unsigned int WearInfo; } ;
struct mtd_info {int dummy; } ;
struct erase_info {int addr; int len; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {int EraseSize; TYPE_1__ mbd; struct erase_info instr; } ;


 unsigned int ERASE_MARK ;
 scalar_t__ SECTORSIZE ;
 scalar_t__ check_free_sectors (struct NFTLrecord*,int,int,int) ;
 void* cpu_to_le16 (unsigned int) ;
 unsigned int cpu_to_le32 (int ) ;
 unsigned int le16_to_cpu (int) ;
 void* le32_to_cpu (unsigned int) ;
 int memset (struct erase_info*,int ,int) ;
 int mtd_block_markbad (struct mtd_info*,int) ;
 scalar_t__ mtd_erase (struct mtd_info*,struct erase_info*) ;
 scalar_t__ nftl_read_oob (struct mtd_info*,scalar_t__,int,size_t*,char*) ;
 scalar_t__ nftl_write_oob (struct mtd_info*,scalar_t__,int,size_t*,char*) ;
 int printk (char*,int) ;

int NFTL_formatblock(struct NFTLrecord *nftl, int block)
{
 size_t retlen;
 unsigned int nb_erases, erase_mark;
 struct nftl_uci1 uci;
 struct erase_info *instr = &nftl->instr;
 struct mtd_info *mtd = nftl->mbd.mtd;


 if (nftl_read_oob(mtd, block * nftl->EraseSize + SECTORSIZE + 8,
     8, &retlen, (char *)&uci) < 0)
  goto default_uci1;

 erase_mark = le16_to_cpu ((uci.EraseMark | uci.EraseMark1));
 if (erase_mark != ERASE_MARK) {
 default_uci1:
  uci.EraseMark = cpu_to_le16(ERASE_MARK);
  uci.EraseMark1 = cpu_to_le16(ERASE_MARK);
  uci.WearInfo = cpu_to_le32(0);
 }

 memset(instr, 0, sizeof(struct erase_info));


 instr->addr = block * nftl->EraseSize;
 instr->len = nftl->EraseSize;
 if (mtd_erase(mtd, instr)) {
  printk("Error while formatting block %d\n", block);
  goto fail;
 }


 nb_erases = le32_to_cpu(uci.WearInfo);
 nb_erases++;


 if (nb_erases == 0)
  nb_erases = 1;





 if (check_free_sectors(nftl, instr->addr, nftl->EraseSize, 1) != 0)
  goto fail;

 uci.WearInfo = le32_to_cpu(nb_erases);
 if (nftl_write_oob(mtd, block * nftl->EraseSize + SECTORSIZE +
      8, 8, &retlen, (char *)&uci) < 0)
  goto fail;
 return 0;
fail:


 mtd_block_markbad(nftl->mbd.mtd, instr->addr);
 return -1;
}
