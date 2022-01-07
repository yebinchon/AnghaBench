
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm47xxsflash {int type; int (* cc_read ) (struct bcm47xxsflash*,int ) ;} ;




 int BCMA_CC_FLASHDATA ;
 int EBUSY ;
 int OPCODE_AT_STATUS ;
 int OPCODE_ST_RDSR ;
 int SR_AT_READY ;
 int SR_ST_WIP ;
 int bcm47xxsflash_cmd (struct bcm47xxsflash*,int ) ;
 int cpu_relax () ;
 int jiffies ;
 int pr_err (char*) ;
 int stub1 (struct bcm47xxsflash*,int ) ;
 int stub2 (struct bcm47xxsflash*,int ) ;
 int time_after_eq (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int bcm47xxsflash_poll(struct bcm47xxsflash *b47s, int timeout)
{
 unsigned long deadline = jiffies + timeout;

 do {
  switch (b47s->type) {
  case 128:
   bcm47xxsflash_cmd(b47s, OPCODE_ST_RDSR);
   if (!(b47s->cc_read(b47s, BCMA_CC_FLASHDATA) &
         SR_ST_WIP))
    return 0;
   break;
  case 129:
   bcm47xxsflash_cmd(b47s, OPCODE_AT_STATUS);
   if (b47s->cc_read(b47s, BCMA_CC_FLASHDATA) &
       SR_AT_READY)
    return 0;
   break;
  }

  cpu_relax();
  udelay(1);
 } while (!time_after_eq(jiffies, deadline));

 pr_err("Timeout waiting for flash to be ready!\n");

 return -EBUSY;
}
