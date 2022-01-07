
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct bcm47xxsflash* priv; } ;
struct erase_info {int addr; } ;
struct bcm47xxsflash {int type; int blocksize; int (* cc_write ) (struct bcm47xxsflash*,int ,int) ;} ;




 int BCMA_CC_FLASHADDR ;
 int HZ ;
 int OPCODE_AT_PAGE_ERASE ;
 int OPCODE_ST_SE ;
 int OPCODE_ST_SSE ;
 int OPCODE_ST_WREN ;
 int bcm47xxsflash_cmd (struct bcm47xxsflash*,int ) ;
 int bcm47xxsflash_poll (struct bcm47xxsflash*,int ) ;
 int stub1 (struct bcm47xxsflash*,int ,int) ;
 int stub2 (struct bcm47xxsflash*,int ,int) ;

__attribute__((used)) static int bcm47xxsflash_erase(struct mtd_info *mtd, struct erase_info *erase)
{
 struct bcm47xxsflash *b47s = mtd->priv;

 switch (b47s->type) {
 case 128:
  bcm47xxsflash_cmd(b47s, OPCODE_ST_WREN);
  b47s->cc_write(b47s, BCMA_CC_FLASHADDR, erase->addr);




  if (b47s->blocksize < (64 * 1024))
   bcm47xxsflash_cmd(b47s, OPCODE_ST_SSE);
  else
   bcm47xxsflash_cmd(b47s, OPCODE_ST_SE);
  break;
 case 129:
  b47s->cc_write(b47s, BCMA_CC_FLASHADDR, erase->addr << 1);
  bcm47xxsflash_cmd(b47s, OPCODE_AT_PAGE_ERASE);
  break;
 }

 return bcm47xxsflash_poll(b47s, HZ);
}
