
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;
typedef int __be32 ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int BNX2X_NVRAM_TIMEOUT_COUNT ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int DP (int,char*) ;
 int EBUSY ;
 int MCPR_NVM_ADDR_NVM_ADDR_VALUE ;
 int MCPR_NVM_COMMAND_DOIT ;
 int MCPR_NVM_COMMAND_DONE ;
 int MCP_REG_MCPR_NVM_ADDR ;
 int MCP_REG_MCPR_NVM_COMMAND ;
 int MCP_REG_MCPR_NVM_READ ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int cpu_to_be32 (int) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_nvram_read_dword(struct bnx2x *bp, u32 offset, __be32 *ret_val,
      u32 cmd_flags)
{
 int count, i, rc;
 u32 val;


 cmd_flags |= MCPR_NVM_COMMAND_DOIT;


 REG_WR(bp, MCP_REG_MCPR_NVM_COMMAND, MCPR_NVM_COMMAND_DONE);


 REG_WR(bp, MCP_REG_MCPR_NVM_ADDR,
        (offset & MCPR_NVM_ADDR_NVM_ADDR_VALUE));


 REG_WR(bp, MCP_REG_MCPR_NVM_COMMAND, cmd_flags);


 count = BNX2X_NVRAM_TIMEOUT_COUNT;
 if (CHIP_REV_IS_SLOW(bp))
  count *= 100;


 *ret_val = 0;
 rc = -EBUSY;
 for (i = 0; i < count; i++) {
  udelay(5);
  val = REG_RD(bp, MCP_REG_MCPR_NVM_COMMAND);

  if (val & MCPR_NVM_COMMAND_DONE) {
   val = REG_RD(bp, MCP_REG_MCPR_NVM_READ);




   *ret_val = cpu_to_be32(val);
   rc = 0;
   break;
  }
 }
 if (rc == -EBUSY)
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "nvram read timeout expired\n");
 return rc;
}
