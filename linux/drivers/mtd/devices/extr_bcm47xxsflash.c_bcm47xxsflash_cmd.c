
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm47xxsflash {int (* cc_read ) (struct bcm47xxsflash*,int ) ;int (* cc_write ) (struct bcm47xxsflash*,int ,int) ;} ;


 int BCMA_CC_FLASHCTL ;
 int BCMA_CC_FLASHCTL_BUSY ;
 int BCMA_CC_FLASHCTL_START ;
 int cpu_relax () ;
 int pr_err (char*) ;
 int stub1 (struct bcm47xxsflash*,int ,int) ;
 int stub2 (struct bcm47xxsflash*,int ) ;

__attribute__((used)) static void bcm47xxsflash_cmd(struct bcm47xxsflash *b47s, u32 opcode)
{
 int i;

 b47s->cc_write(b47s, BCMA_CC_FLASHCTL, BCMA_CC_FLASHCTL_START | opcode);
 for (i = 0; i < 1000; i++) {
  if (!(b47s->cc_read(b47s, BCMA_CC_FLASHCTL) &
        BCMA_CC_FLASHCTL_BUSY))
   return;
  cpu_relax();
 }
 pr_err("Control command failed (timeout)!\n");
}
