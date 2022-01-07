
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnx2 {TYPE_1__* flash_info; } ;
struct TYPE_2__ {int flags; } ;


 int BNX2_NVM_ADDR ;
 int BNX2_NVM_ADDR_NVM_ADDR_VALUE ;
 int BNX2_NVM_COMMAND ;
 int BNX2_NVM_COMMAND_DOIT ;
 int BNX2_NVM_COMMAND_DONE ;
 int BNX2_NVM_COMMAND_ERASE ;
 int BNX2_NVM_COMMAND_WR ;
 int BNX2_NV_BUFFERED ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EBUSY ;
 int NVRAM_TIMEOUT_COUNT ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_nvram_erase_page(struct bnx2 *bp, u32 offset)
{
 u32 cmd;
 int j;

 if (bp->flash_info->flags & BNX2_NV_BUFFERED)

  return 0;


 cmd = BNX2_NVM_COMMAND_ERASE | BNX2_NVM_COMMAND_WR |
       BNX2_NVM_COMMAND_DOIT;


 BNX2_WR(bp, BNX2_NVM_COMMAND, BNX2_NVM_COMMAND_DONE);


 BNX2_WR(bp, BNX2_NVM_ADDR, offset & BNX2_NVM_ADDR_NVM_ADDR_VALUE);


 BNX2_WR(bp, BNX2_NVM_COMMAND, cmd);


 for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
  u32 val;

  udelay(5);

  val = BNX2_RD(bp, BNX2_NVM_COMMAND);
  if (val & BNX2_NVM_COMMAND_DONE)
   break;
 }

 if (j >= NVRAM_TIMEOUT_COUNT)
  return -EBUSY;

 return 0;
}
