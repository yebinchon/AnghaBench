
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int BNX2X_NVRAM_TIMEOUT_COUNT ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int DP (int,char*) ;
 int EBUSY ;
 int MCPR_NVM_ADDR_NVM_ADDR_VALUE ;
 int MCPR_NVM_COMMAND_DOIT ;
 int MCPR_NVM_COMMAND_DONE ;
 int MCPR_NVM_COMMAND_WR ;
 int MCP_REG_MCPR_NVM_ADDR ;
 int MCP_REG_MCPR_NVM_COMMAND ;
 int MCP_REG_MCPR_NVM_WRITE ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_nvram_write_dword(struct bnx2x *bp, u32 offset, u32 val,
       u32 cmd_flags)
{
 int count, i, rc;


 cmd_flags |= MCPR_NVM_COMMAND_DOIT | MCPR_NVM_COMMAND_WR;


 REG_WR(bp, MCP_REG_MCPR_NVM_COMMAND, MCPR_NVM_COMMAND_DONE);


 REG_WR(bp, MCP_REG_MCPR_NVM_WRITE, val);


 REG_WR(bp, MCP_REG_MCPR_NVM_ADDR,
        (offset & MCPR_NVM_ADDR_NVM_ADDR_VALUE));


 REG_WR(bp, MCP_REG_MCPR_NVM_COMMAND, cmd_flags);


 count = BNX2X_NVRAM_TIMEOUT_COUNT;
 if (CHIP_REV_IS_SLOW(bp))
  count *= 100;


 rc = -EBUSY;
 for (i = 0; i < count; i++) {
  udelay(5);
  val = REG_RD(bp, MCP_REG_MCPR_NVM_COMMAND);
  if (val & MCPR_NVM_COMMAND_DONE) {
   rc = 0;
   break;
  }
 }

 if (rc == -EBUSY)
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "nvram write timeout expired\n");
 return rc;
}
