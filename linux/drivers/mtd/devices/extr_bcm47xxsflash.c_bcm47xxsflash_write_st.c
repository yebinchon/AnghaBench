
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct mtd_info {struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int (* cc_write ) (struct bcm47xxsflash*,int ,int) ;TYPE_3__* bcma_cc; } ;
struct TYPE_6__ {TYPE_2__* core; } ;
struct TYPE_4__ {int rev; } ;
struct TYPE_5__ {TYPE_1__ id; } ;


 int BCMA_CC_FLASHADDR ;
 int BCMA_CC_FLASHCTL ;
 int BCMA_CC_FLASHDATA ;
 int HZ ;
 int OPCODE_ST_CSA ;
 int OPCODE_ST_PP ;
 int OPCODE_ST_WREN ;
 int bcm47xxsflash_cmd (struct bcm47xxsflash*,int) ;
 scalar_t__ bcm47xxsflash_poll (struct bcm47xxsflash*,int) ;
 int pr_err (char*) ;
 int stub1 (struct bcm47xxsflash*,int ,int) ;
 int stub2 (struct bcm47xxsflash*,int ,int) ;
 int stub3 (struct bcm47xxsflash*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int bcm47xxsflash_write_st(struct mtd_info *mtd, u32 offset, size_t len,
      const u_char *buf)
{
 struct bcm47xxsflash *b47s = mtd->priv;
 int written = 0;


 bcm47xxsflash_cmd(b47s, OPCODE_ST_WREN);


 b47s->cc_write(b47s, BCMA_CC_FLASHADDR, offset);
 b47s->cc_write(b47s, BCMA_CC_FLASHDATA, *buf++);


 if (b47s->bcma_cc->core->id.rev < 20) {
  bcm47xxsflash_cmd(b47s, OPCODE_ST_PP);
  return 1;
 }


 bcm47xxsflash_cmd(b47s, OPCODE_ST_CSA | OPCODE_ST_PP);
 offset++;
 len--;
 written++;

 while (len > 0) {

  if ((offset & 0xFF) == 0)
   break;

  bcm47xxsflash_cmd(b47s, OPCODE_ST_CSA | *buf++);
  offset++;
  len--;
  written++;
 }


 b47s->cc_write(b47s, BCMA_CC_FLASHCTL, 0);
 udelay(1);
 if (bcm47xxsflash_poll(b47s, HZ / 10))
  pr_err("Flash rejected dropping CSA\n");

 return written;
}
