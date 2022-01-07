
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bnx2 {TYPE_1__* flash_info; } ;
typedef int __be32 ;
struct TYPE_2__ {int flags; int page_size; int page_bits; } ;


 int BNX2_NVM_ADDR ;
 int BNX2_NVM_ADDR_NVM_ADDR_VALUE ;
 int BNX2_NVM_COMMAND ;
 int BNX2_NVM_COMMAND_DOIT ;
 int BNX2_NVM_COMMAND_DONE ;
 int BNX2_NVM_COMMAND_WR ;
 int BNX2_NVM_WRITE ;
 int BNX2_NV_TRANSLATE ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EBUSY ;
 int NVRAM_TIMEOUT_COUNT ;
 int be32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_nvram_write_dword(struct bnx2 *bp, u32 offset, u8 *val, u32 cmd_flags)
{
 u32 cmd;
 __be32 val32;
 int j;


 cmd = BNX2_NVM_COMMAND_DOIT | BNX2_NVM_COMMAND_WR | cmd_flags;


 if (bp->flash_info->flags & BNX2_NV_TRANSLATE) {
  offset = ((offset / bp->flash_info->page_size) <<
     bp->flash_info->page_bits) +
    (offset % bp->flash_info->page_size);
 }


 BNX2_WR(bp, BNX2_NVM_COMMAND, BNX2_NVM_COMMAND_DONE);

 memcpy(&val32, val, 4);


 BNX2_WR(bp, BNX2_NVM_WRITE, be32_to_cpu(val32));


 BNX2_WR(bp, BNX2_NVM_ADDR, offset & BNX2_NVM_ADDR_NVM_ADDR_VALUE);


 BNX2_WR(bp, BNX2_NVM_COMMAND, cmd);


 for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
  udelay(5);

  if (BNX2_RD(bp, BNX2_NVM_COMMAND) & BNX2_NVM_COMMAND_DONE)
   break;
 }
 if (j >= NVRAM_TIMEOUT_COUNT)
  return -EBUSY;

 return 0;
}
