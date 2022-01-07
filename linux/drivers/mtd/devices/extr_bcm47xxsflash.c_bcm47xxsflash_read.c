
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ size; struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {scalar_t__ window; int (* cc_read ) (struct bcm47xxsflash*,int ) ;int (* cc_write ) (struct bcm47xxsflash*,int ,int ) ;} ;
typedef scalar_t__ loff_t ;


 scalar_t__ BCM47XXSFLASH_WINDOW_SZ ;
 int BCMA_CC_FLASHADDR ;
 int BCMA_CC_FLASHDATA ;
 int EINVAL ;
 int OPCODE_ST_READ4B ;
 int bcm47xxsflash_cmd (struct bcm47xxsflash*,int ) ;
 int memcpy_fromio (int *,scalar_t__,size_t) ;
 size_t min (size_t,size_t) ;
 int stub1 (struct bcm47xxsflash*,int ,int ) ;
 int stub2 (struct bcm47xxsflash*,int ) ;

__attribute__((used)) static int bcm47xxsflash_read(struct mtd_info *mtd, loff_t from, size_t len,
         size_t *retlen, u_char *buf)
{
 struct bcm47xxsflash *b47s = mtd->priv;
 size_t orig_len = len;


 if ((from + len) > mtd->size)
  return -EINVAL;


 if (from < BCM47XXSFLASH_WINDOW_SZ) {
  size_t memcpy_len;

  memcpy_len = min(len, (size_t)(BCM47XXSFLASH_WINDOW_SZ - from));
  memcpy_fromio(buf, b47s->window + from, memcpy_len);
  from += memcpy_len;
  len -= memcpy_len;
  buf += memcpy_len;
 }


 for (; len; len--) {
  b47s->cc_write(b47s, BCMA_CC_FLASHADDR, from++);
  bcm47xxsflash_cmd(b47s, OPCODE_ST_READ4B);
  *buf++ = b47s->cc_read(b47s, BCMA_CC_FLASHDATA);
 }

 *retlen = orig_len;

 return orig_len;
}
