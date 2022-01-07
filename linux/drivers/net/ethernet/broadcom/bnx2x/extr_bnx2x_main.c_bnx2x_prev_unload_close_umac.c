
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_mac_vals {int* umac_addr; int * umac_val; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_DEV_INFO (char*,int) ;
 int GRCBASE_UMAC0 ;
 int GRCBASE_UMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int ) ;
 int UMAC_REG_COMMAND_CONFIG ;

__attribute__((used)) static bool bnx2x_prev_unload_close_umac(struct bnx2x *bp,
      u8 port, u32 reset_reg,
      struct bnx2x_mac_vals *vals)
{
 u32 mask = MISC_REGISTERS_RESET_REG_2_UMAC0 << port;
 u32 base_addr;

 if (!(mask & reset_reg))
  return 0;

 BNX2X_DEV_INFO("Disable umac Rx %02x\n", port);
 base_addr = port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
 vals->umac_addr[port] = base_addr + UMAC_REG_COMMAND_CONFIG;
 vals->umac_val[port] = REG_RD(bp, vals->umac_addr[port]);
 REG_WR(bp, vals->umac_addr[port], 0);

 return 1;
}
