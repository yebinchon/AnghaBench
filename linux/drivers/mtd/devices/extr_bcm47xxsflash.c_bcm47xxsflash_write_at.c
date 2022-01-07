
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct mtd_info {struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int blocksize; int (* cc_write ) (struct bcm47xxsflash*,int ,int) ;} ;


 int BCMA_CC_FLASHADDR ;
 int BCMA_CC_FLASHDATA ;
 int HZ ;
 int OPCODE_AT_BUF1_LOAD ;
 int OPCODE_AT_BUF1_PROGRAM ;
 int OPCODE_AT_BUF1_WRITE ;
 int bcm47xxsflash_cmd (struct bcm47xxsflash*,int ) ;
 int bcm47xxsflash_poll (struct bcm47xxsflash*,int) ;
 int pr_err (char*,int) ;
 int stub1 (struct bcm47xxsflash*,int ,int) ;
 int stub2 (struct bcm47xxsflash*,int ,int) ;
 int stub3 (struct bcm47xxsflash*,int ,int) ;
 int stub4 (struct bcm47xxsflash*,int ,int) ;

__attribute__((used)) static int bcm47xxsflash_write_at(struct mtd_info *mtd, u32 offset, size_t len,
      const u_char *buf)
{
 struct bcm47xxsflash *b47s = mtd->priv;
 u32 mask = b47s->blocksize - 1;
 u32 page = (offset & ~mask) << 1;
 u32 byte = offset & mask;
 int written = 0;


 if (byte || (len < b47s->blocksize)) {
  int err;

  b47s->cc_write(b47s, BCMA_CC_FLASHADDR, page);
  bcm47xxsflash_cmd(b47s, OPCODE_AT_BUF1_LOAD);

  err = bcm47xxsflash_poll(b47s, HZ / 1000);
  if (err) {
   pr_err("Timeout reading page 0x%X info buffer\n", page);
   return err;
  }
 }


 while (len > 0) {

  if (byte == b47s->blocksize)
   break;

  b47s->cc_write(b47s, BCMA_CC_FLASHADDR, byte++);
  b47s->cc_write(b47s, BCMA_CC_FLASHDATA, *buf++);
  bcm47xxsflash_cmd(b47s, OPCODE_AT_BUF1_WRITE);
  len--;
  written++;
 }


 b47s->cc_write(b47s, BCMA_CC_FLASHADDR, page);
 bcm47xxsflash_cmd(b47s, OPCODE_AT_BUF1_PROGRAM);

 return written;
}
